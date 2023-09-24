import 'package:dropout/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Dropout',
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 252, 175, 28),
          backgroundColor: Colors.black87,
          title: const Text(
            'Student Dropout',
            style: TextStyle(
              color: Colors.white,
              // color: Colors.black,
              fontSize: 23,
            ),
          ),
        ),
        body: Container(
          child: LoginScreen(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/dropout_background.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
