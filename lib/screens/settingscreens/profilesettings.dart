import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

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
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/MilqStickerHeartver.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
