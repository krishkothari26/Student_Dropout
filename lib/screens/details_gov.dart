import 'package:flutter/material.dart';

class DetailsGov extends StatelessWidget {
  const DetailsGov({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Details',
          style: TextStyle(
            color: Colors.white,
            // color: Colors.black,
            fontSize: 23,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 250, 243, 218),
      body: Center(
        child: Text('put the sorted graphs or pie charts!'),
      ),
    );
  }
}
