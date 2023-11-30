import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class MakeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  MakeTextField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: texthighlightColor),
        filled: true,
        fillColor: primaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: buttonhiglightColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}