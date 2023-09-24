import 'package:flutter/material.dart';

class CenteredTextfield extends StatelessWidget {
  const CenteredTextfield({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        child: TextField(
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            filled: true,
            labelText: labelText,
            hintText: hintText,
            contentPadding: const EdgeInsets.only(
              left: 8,
            ),
            border: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
