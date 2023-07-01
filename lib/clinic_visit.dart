import 'package:flutter/material.dart';

class clinic_visit extends StatefulWidget {
  const clinic_visit({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _clinic_visitState createState() => _clinic_visitState();
}

class _clinic_visitState extends State<clinic_visit> {
  String searchText = '';

  void showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search Text'),
          content: Text(searchText),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          width: 500,
          child: TextField(
            onChanged: (text) {
              setState(() {
                searchText = text;
              });
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                  bottom: Radius.circular(50),
                ),
              ),
              hintText: 'Search...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showPopup();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class clinic_visit extends StatefulWidget {
//   const clinic_visit({super.key});

//   @override
//   State<clinic_visit> createState() => _clinic_visitState();
// }

// class _clinic_visitState extends State<clinic_visit> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//             backgroundColor: Color.fromARGB(255, 159, 194, 186),
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
                    
//                   children: [
//                     Expanded(
//                         child: Image.asset(
//                           'images/doctor11.jpg',
//                           fit: BoxFit.fill,
//                         ),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                     Expanded(
//                         child: Image.asset('images/doctor11.jpg',
//                             fit: BoxFit.fill),
//                         flex: 1),
//                   ],
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }
