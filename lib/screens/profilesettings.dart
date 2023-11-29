import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart';
import '../../functions/settingstextfield.dart';
import '../../utils/sizes.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController first = new TextEditingController();
  TextEditingController last = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController number = new TextEditingController();
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
              Stack(
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
                      child: Image.asset(
                        profilePicture,
                        fit: BoxFit.cover,
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: FloatingActionButton(
                      child: const Icon(Icons.camera_alt),
                      backgroundColor: buttonhiglightColor,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'First Name',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              child: SetTextField(controller: first),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Last Name',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              child: SetTextField(controller: last),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          child: SetTextField(controller: email),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Gender',
                                    style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  child: SetTextField(controller: gender),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Phone Number',
                                    style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  child: SetTextField(controller: number),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30.0),
                        Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  buttonhiglightColor),
                            ),
                            child: Text(
                              'Save Changes',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
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
message.txt
10 KB