import 'package:flutter/material.dart';

Widget buildTextField(String hintText, IconData prefixIcon) {
    TextEditingController search = TextEditingController();
    return TextField(
      style: TextStyle(
        color: const Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
      ),
      controller: search,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 229, 237, 255),
        contentPadding: const EdgeInsets.only(bottom: 5.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: const Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 20.0,
        ),
        prefixIconColor: const Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
      ),
    );
  }
