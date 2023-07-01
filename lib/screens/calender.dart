import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:healthcare/screens/colors.dart';
import 'package:healthcare/screens/success.dart';
import 'package:healthcare/widgets/constants.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Event {
  final String title;
  Event({required this.title});

  String toString() => this.title;
}

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _Calender();
}

class _Calender extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TableCalendarPage(),
    );
  }
}

class TableCalendarPage extends StatefulWidget {
  const TableCalendarPage({super.key});

  @override
  State<TableCalendarPage> createState() => _TableCalendarPageState();
}

class _TableCalendarPageState extends State<TableCalendarPage> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  TextEditingController _eventController = TextEditingController();

  var events;
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  Map<String, dynamic> encodeMap(Map<String, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[Key];
    });
    return newMap;
  }

  Map<String, dynamic> decode(Map<String, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[Key];
    });
    return newMap;
  }

  void _showEventOptions(Event event) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Event Options'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(event.title),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement editing logic here
                // You can open a form or navigate to an edit screen
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Edit Event'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement deletion logic here
                events.remove(event); // Remove the event from the list
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Delete Event'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 41, 204),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.arrow_back),
          );
        }),
        title: const Text('Appointment'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 132, 193),
              ),
              child: Text(
                'Calendar',
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text('Month'),
            ),
            ListTile(
              title: Text('Week'),
            ),
            ListTile(
              title: Text('2Weeks'),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(10),
                topEnd: Radius.circular(10),
                topStart: Radius.circular(10),
                bottomStart: Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TableCalendar<Event>(
                  focusedDay: selectedDay,
                  firstDay: DateTime.utc(2010, 10, 20),
                  lastDay: DateTime.utc(2040, 10, 20),
                  calendarFormat: format,
                  onFormatChanged: (CalendarFormat _format) {
                    setState(() {
                      format = _format;
                    });
                  },
                  headerStyle: const HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: true,
                      formatButtonShowsNext: false,
                      titleTextStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal)),
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  daysOfWeekVisible: true,
                  onDaySelected: (DateTime selectDay, DateTime focusDay) {
                    setState(() {
                      selectedDay = selectDay;
                      focusedDay = focusDay;
                    });
                    print(focusedDay);
                  },
                  selectedDayPredicate: (DateTime date) {
                    return isSameDay(selectedDay, date);
                  },
                  eventLoader: _getEventsfromDay,
                  calendarBuilders:
                      CalendarBuilders(todayBuilder: (context, date, _) {
                    // Customize today's date appearance
                    return Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 21, 41, 173),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }, selectedBuilder: (context, date, _) {
                    // Customize selected date appearance
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }, markerBuilder: (
                    context,
                    date,
                    events,
                  ) {
                    final children = <Widget>[];
                    if (events.isNotEmpty) {
                      children.add(
                        Positioned(
                          right: 1,
                          bottom: 1,
                          child: GestureDetector(
                            onTap: () => _showEventOptions(events[0]),
                            child: const Icon(Icons.edit, size: 16),
                          ),
                        ),
                      );
                    }
                  }),
                  calendarStyle: const CalendarStyle(
                    todayTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ..._getEventsfromDay(selectedDay).map(
                  (Event event) => ListTile(
                    title: Text(
                      event.title,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                // Text(
                //   "Book time",
                //   style: TextStyle(
                //       fontSize: 18,
                //       color: bColor.withOpacity(0.6),
                //       fontWeight: FontWeight.bold),
                // ),
                // SizedBox(
                //   height: 8,
                //   width: 10,
                // ),
                // Container(
                //   height: 70,
                //   child: ListView.builder(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 6,
                //     itemBuilder: (context, index) {
                //       return InkWell(
                //         child: Container(
                //           margin:
                //               EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                //           padding:
                //               EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                //           decoration: BoxDecoration(
                //     color: index == 1 ? pColor : Color(0xFFF2F8FF),
                //     borderRadius: BorderRadius.circular(10),
                //     boxShadow: [
                //       BoxShadow(
                //         color: pColor,
                //         blurRadius: 4,
                //         spreadRadius: 2,
                //       ),
                //     ]),
                // child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // children: [
                //   Text(
                //     "{$index + 8}",
                //     style: TextStyle(
                //       fontSize: 17,
                //       color: index == 1
                //           ? wColor
                //           : pColor.withOpacity(0.6),
                //     ),
                //   ),
                //   SizedBox(
                //     height: 2,
                //   ),
                //               Text(
                //                 " DEC",
                //                 style: TextStyle(
                //                   fontSize: 17,
                //                   fontWeight: FontWeight.w500,
                //                   color: index == 1
                //                       ? wColor
                //                       : bColor.withOpacity(0.6),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  " Select Consultation Time ",
                  style: TextStyle(
                    fontSize: 18,
                    color: bColor.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        decoration: BoxDecoration(
                          color: index == 2 ? pColor : Color(0xFFF2F8FF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: pColor,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '${index + 9}: ${index + 9 > 11 ? "PM" : "AM"}',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color:
                                  index == 2 ? wColor : bColor.withOpacity(0.6),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => success()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Booked",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
