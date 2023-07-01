import 'package:flutter/material.dart';

class success extends StatefulWidget {
  const success({super.key});

  @override
  State<success> createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image.asset('assets/images/doctor3.jpg'),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text(
            'Succesfully Booked',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: button(
            width: double.infinity,
            Title: 'Back to home page ',
            onPressed: () => Navigator.of(context).pushNamed('welcome page'),
            disable: false,
          ),
        ),
      ],
    )));
  }
}

button(
    {required double width,
    required String Title,
    required Future<Object?> Function() onPressed,
    required bool disable}) {}
