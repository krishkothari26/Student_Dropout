import 'package:dropout/screens/details_gov.dart';
import 'package:dropout/screens/details_school.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 252, 175, 28),
        backgroundColor: Colors.black87,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            // color: Colors.black,
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 250, 243, 218),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 253, 176, 28),
            ),
            height: 180,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsSchool(),
                  ),
                );
              },
              icon: Icon(Icons.library_books),
              color: Colors.white,
            ),
            label: 'Details',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
