import 'package:flutter/material.dart';
// class cancelschedule extends StatefulWidget {
//   const cancelschedule({super.key});

//   @override
//   State<cancelschedule> createState() => _cancelscheduleState();
// }

// class _cancelscheduleState extends State<cancelschedule> {

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "About Doctor",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//           SizedBox(height: 15),
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 5),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 4,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Column(children: [
//                 ListTile(
//                   title: Text(
//                     "Dr.Ram",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   subtitle: Text("Therapist"),
//                   trailing: CircleAvatar(
//                     radius: 25,
//                     backgroundImage: AssetImage("images/doctor3.jpg"),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Divider(thickness: 1, height: 20),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(Icons.calendar_month, color: Colors.red),
//                     SizedBox(width: 5),
//                     Text(
//                       "12/06/2023",
//                       style: TextStyle(
//                         color: Colors.pink,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.access_time_filled,
//                       color: Colors.pink,
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "10:30 AM",
//                       style: TextStyle(
//                         color: Colors.black54,
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "confirmed",
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Cancel",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 72, 78, 238),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Reschedule",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 )
//               ]),
//             ),
//           ),
//           Text(
//             "About Doctor",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//           SizedBox(height: 15),
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 5),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 4,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Column(children: [
//                 ListTile(
//                   title: Text(
//                     "Dr.leg ",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   subtitle: Text("Heart specialist"),
//                   trailing: CircleAvatar(
//                     radius: 25,
//                     backgroundImage: AssetImage("images/doctor2.jpg"),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Divider(thickness: 1, height: 20),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(Icons.calendar_month, color: Colors.red),
//                     SizedBox(width: 5),
//                     Text(
//                       "13/06/2023",
//                       style: TextStyle(
//                         color: Colors.pink,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.access_time_filled,
//                       color: Colors.pink,
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "11:45 AM",
//                       style: TextStyle(
//                         color: Colors.black54,
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "Confirmed",
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Cancel",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 61, 66, 220),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Reschedule",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 )
//               ]),
//             ),
//           ),
//           Text(
//             "About Doctor",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//           SizedBox(height: 15),
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 5),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 4,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Column(children: [
//                 ListTile(
//                   title: Text(
//                     "Dr.Sam ",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   subtitle: Text("Fever"),
//                   trailing: CircleAvatar(
//                     radius: 25,
//                     backgroundImage: AssetImage("images/doctor5.jpg"),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Divider(thickness: 1, height: 20),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(Icons.calendar_month, color: Colors.red),
//                     SizedBox(width: 5),
//                     Text(
//                       "20/06/2023",
//                       style: TextStyle(
//                         color: Colors.pink,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.access_time_filled,
//                       color: Colors.pink,
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "1:45 AM",
//                       style: TextStyle(
//                         color: Colors.black54,
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "Confirmed",
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Cancel",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: 150,
//                         padding: EdgeInsets.symmetric(vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 61, 66, 220),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                             child: Text(
//                           "Reschedule",
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 )
//               ]),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class cancelschedule extends StatefulWidget {
  const cancelschedule({super.key});

  @override
  State<cancelschedule> createState() => _cancelscheduleState();
}

class _cancelscheduleState extends State<cancelschedule> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
