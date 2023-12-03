// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/gridmaker.dart';
import '../../utils/sizes.dart';

class PopUpDiscovery extends StatelessWidget {
  const PopUpDiscovery({super.key, required this.gridItems});
  final GridItems gridItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: primaryColor,
        elevation: 0,
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
              top: 20.0,
              left: TSizes.leftPad,
              bottom: TSizes.botPad,
              right: TSizes.rightPad),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  gridItems.imageUrl,
                  height: 315.0,
                  width: 480.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  gridItems.gridName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 5.0,
                ),
                child: Text(
                  gridItems.summary,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    height: 2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'Location: ${gridItems.location}',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'Contacts: ${gridItems.contact}',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}