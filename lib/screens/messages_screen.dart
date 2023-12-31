// import 'package:flutter/material.dart';
// import 'package:healthcare/screens/chat_screen.dart';

// class Message_screen extends StatelessWidget {
//   const Message_screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List imgs = ["doctor2.jpg", "doctor3.jpg", "doctor4.jpg", "doctor5.jpg,"];
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 40),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               "Messages",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: 200,
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 15),
//                       child: TextField(
//                           decoration: InputDecoration(
//                         hintText: "Search",
//                         border: InputBorder.none,
//                       )),
//                     ),
//                   ),
//                   Icon(
//                     Icons.search,
//                     color: Colors.deepPurple,
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               "Active Now",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 90,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.symmetric(horizontal: 12),
//                     width: 65,
//                     height: 65,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           spreadRadius: 2,
//                           blurRadius: 10,
//                         ),
//                       ],
//                     ),
//                     child: Stack(
//                       textDirection: TextDirection.rtl,
//                       children: [
//                         Center(
//                           child: Container(
//                             height: 65,
//                             width: 65,
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(30),
//                               child: Image.asset(
//                                 ("images/${imgs[index]}"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(4),
//                           padding: EdgeInsets.all(3),
//                           height: 20,
//                           width: 20,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.green,
//                               shape: BoxShape.circle,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               "Recent chat",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//           ),
//           ListView.builder(
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: 3,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: ListTile(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => chatscreen(),
//                           ));
//                     },
//                     leading: CircleAvatar(
//                       radius: 30,
//                       backgroundImage: AssetImage("images/${imgs[index]}"),
//                     ),
//                     title: Text(
//                       "Dr. leg ",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       "Hello, Doctor are you there?",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     trailing: Text(
//                       "12:30",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.black54,
//                       ),
//                     )),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
