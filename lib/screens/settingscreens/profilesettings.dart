import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart';
import 'package:get/get.dart';
import '../../utils/universalvars.dart';
import '../../utils/sizes.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 60.0,
        elevation: 0.0,
        title: Text(
          'Profile Settings',
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: 20.0,
              left: TSizes.leftPad,
              bottom: TSizes.botPad,
              right: TSizes.rightPad),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: buttonhiglightColor,
                    ),
                    borderRadius: BorderRadius.circular(150.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.0),
                  // child: IconButton(
                  //   icon: Image.asset('assets/MilqStickerHeartver.png'),
                  //   iconSize: 80.0,
                  //   onPressed: () => Get.to(
                  //     () => const ProfileSettings(),
                  //   ),
                  // ),
                  child: Image.asset(
                    profilePicture,
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 50.0),
              //   alignment: Alignment.center,
              //   child: ClipRRect(
              //     child: Image(
              //       image: AssetImage(profilePicture),
              //       height: 150.0,
              //       width: 150.0,
              //     ),
              //   ),
              // ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'FirstName',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}