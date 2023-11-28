import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/settingscreens/profilesettings.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 50.0, left: 20.0),
              child: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/MilqStickerHeartver.png',
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 229, 237, 255),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Email@gmail.com',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 229, 237, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                IconButton(
                  onPressed: () => Get.to(
                    () => const ProfileSettings(),
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 229, 237, 255),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 237, 255),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  //MY VOUCHERS
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.ticket,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'My Voucher',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 62, 71, 114),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 2.0),

                  //MY WALLET
                  Row(
                    children: [
                      Container(
                        width: 220.0,
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.wallet,
                              color: Color.fromARGB(255, 62, 71, 114),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'My Wallet',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 2.0),

                  //REFERRAL CODE
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.card_giftcard_rounded,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Referral Code',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 62, 71, 114),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 237, 255),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  //NOTIFICATION SETTINGS
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(children: [
                            FaIcon(
                              Icons.settings_applications,
                              color: Color.fromARGB(255, 62, 71, 114),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Notification Settings',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                            ),
                          ])),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 2.0),

                  //ABOUT US
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.users,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 62, 71, 114),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 2.0),

                  //FAQ
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.circleInfo,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'FAQ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 62, 71, 114),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 2.0),

                  //SUPPORT US
                  Row(
                    children: [
                      Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.heart,
                                color: Color.fromARGB(255, 62, 71, 114),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Support Us',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 62, 71, 114),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 80.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 62, 71, 114),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
