import 'package:flutter/material.dart';

class completedschedule extends StatefulWidget {
  const completedschedule({super.key});

  @override
  State<completedschedule> createState() => _completedscheduleState();
}

class _completedscheduleState extends State<completedschedule> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Completed",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                ListTile(
                  title: Text(
                    "Dr.john",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("therapist"),
                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/doctor3.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(thickness: 1, height: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.calendar_month, color: Colors.red),
                    SizedBox(width: 5),
                    Text(
                      "12/06/2023",
                      style: TextStyle(
                        color: Color.fromARGB(255, 182, 14, 14),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "12:30 AM",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 33, 100, 207),
                        shape: BoxShape.circle,
                      ),
                    ),
                    // SizedBox(width: 5),
                    // Text(
                    //   "Completed",
                    //   style: TextStyle(color: Colors.black),
                    // )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 72, 196),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                ListTile(
                  title: Text(
                    "Dr.leg ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("lung "),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/doctor4.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(thickness: 1, height: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.calendar_month, color: Colors.red),
                    SizedBox(width: 5),
                    Text(
                      "05/06/2023",
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "11:45 AM",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 37, 24, 151),
                        shape: BoxShape.circle,
                      ),
                    ),
                    // SizedBox(width: 5),
                    // Text(
                    //   "Completed",
                    //   style: TextStyle(color: Colors.black),
                    // )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 214, 78, 158),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                ListTile(
                  title: Text(
                    "Dr.kumar ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("brain specalist "),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/doctor2.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(thickness: 1, height: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.calendar_month, color: Colors.red),
                    SizedBox(width: 5),
                    Text(
                      "06/06/2023",
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "10:45 AM",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 37, 24, 151),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 209, 34, 215),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
