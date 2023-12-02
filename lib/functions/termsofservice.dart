import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../utils/tos.dart';
import '../screens/signup.dart';

class TermsOfService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Terms of Service',
          style: TextStyle(
              color: secondaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: buttonhiglightColor,
            size: 30.0,
          ),
        ),
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
                style: TextStyle(
                    fontSize: 12.0,
                    color: texthighlightColor,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Text(
                tosText,
                style: TextStyle(
                    fontSize: 15.0,
                    color: secondaryColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
