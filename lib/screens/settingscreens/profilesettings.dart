import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 237, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 71, 114),
        toolbarHeight: 60.0,
        elevation: 0.0,
        title: const Text(
          'Profile Settings',
          style: TextStyle(
              color: Color.fromARGB(255, 229, 237, 255),
              fontSize: 30.0,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0),
              alignment: Alignment.center,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/MilqStickerHeartver.png'),
                  height: 150.0,
                  width: 150.0,
                ),
              ),
            ),
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
    );
  }
}
