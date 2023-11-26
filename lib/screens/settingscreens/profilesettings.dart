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
            )
          ],
        ),
      ),
    );
  }
}
