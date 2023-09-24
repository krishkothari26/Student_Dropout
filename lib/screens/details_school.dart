import 'package:dropout/widgets/text_field.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Gender',
  'Male',
  'Female',
  'TransGender',
  'Others'
];

class DetailsSchool extends StatefulWidget {
  const DetailsSchool({super.key});

  @override
  State<DetailsSchool> createState() => _DetailsSchoolState();
}

class _DetailsSchoolState extends State<DetailsSchool> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Name',
              hintText: 'Enter Student Name here',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Father\'s name',
              hintText: 'Enter Student Father name here',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Father\'s Mobile no.',
              hintText: 'Enter Valid mobile no. here',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Mother\'s name',
              hintText: 'Enter Student Mother name here',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Mother\'s Mobile no.',
              hintText: 'Enter Valid mobile no. here',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Date of Birth',
              hintText: 'DD/MM/YYYY',
            ),
            SizedBox(
              height: 20,
            ),
            CenteredTextfield(
              labelText: 'Age',
              hintText: 'Enter student age here',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              alignment: Alignment.topLeft,
              height: 50,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black54,
                ),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 130,
              height: 60,
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
