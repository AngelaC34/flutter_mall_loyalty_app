import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../utils/tos.dart';
import '../screens/signup.dart';

class TermsOfService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tosTitle),
        backgroundColor: buttonhiglightColor,
      ),
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tosDate,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text(
                tosText,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
