import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  PasswordTextField({required this.controller});

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: texthighlightColor,
      style: TextStyle(color: texthighlightColor, fontSize: 15.0, fontWeight: FontWeight.w300),
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        
        labelStyle: TextStyle(
          color: texthighlightColor
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: buttonhiglightColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: buttonhiglightColor,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
