import 'package:flutter/material.dart';

class MakeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  MakeTextField({
    required this.label, 
    required this.controller
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Color.fromARGB(255, 255, 255, 255),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF717CE2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
        ),
      ),
    );
  }
}
