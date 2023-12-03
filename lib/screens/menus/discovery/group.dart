import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/gridmaker.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class Group extends StatelessWidget {
  const Group({super.key, required this.gridItems, required this.type});
  final List gridItems;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          this.type,
          style: TextStyle(
              color: secondaryColor,
              fontSize: 25.0,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: buttonhiglightColor,
            size: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GridMaker(gridItems: gridItems),
      ),
    );
  }
}
