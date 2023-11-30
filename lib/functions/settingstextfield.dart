import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class SetTextField extends StatelessWidget {
  const SetTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorHeight: 21.0,
      cursorColor: texthighlightColor,
      style: TextStyle(
          color: texthighlightColor,
          fontSize: 15.0,
          fontWeight: FontWeight.w300),
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 0.5),
        labelStyle: TextStyle(color: texthighlightColor),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: buttonhiglightColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}