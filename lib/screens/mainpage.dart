import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/menus/events_page.dart';
import 'package:flutter_uas_testing/screens/menus/vouchers_page.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart';
import 'package:flutter_uas_testing/utils/sizes.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'menus/promo_page.dart';
import '../functions/carousel.dart';
import '../screens/menus/notificationspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double percent = 80.0;
  final List<String> imgPromos = [
    'assets/promos/promo1.jpg',
    'assets/promos/promo2.jpg',
    'assets/promos/promo3.jpg',
    'assets/promos/promo4.jpg',
  ];

  final List<String> imgVouchers = [
    'assets/vouchers/voucher1.jpg',
    'assets/vouchers/voucher2.jpg',
    'assets/vouchers/voucher3.jpg',
    'assets/vouchers/voucher4.jpg',
  ];

  final List<String> imgEvents = [
    'assets/events/event1.jpg',
    'assets/events/event2.jpg',
    'assets/events/event3.jpg',
    'assets/events/event4.jpg',
  ];

  final double paddingIcon = 200.0;
  final double topBarPad = TSizes.topPad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: TSizes.topPad,
              left: TSizes.leftPad,
              bottom: TSizes.botPad,
              right: TSizes.rightPad),
          child: Column(
            children: [
              Row(
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
                        height: 70.0,
                        width: 70.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Text(
                          username,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          top: 2.0,
                        ),
                        child: Text(
                          'Points Amount: ${points}',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: texthighlightColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: buttonhiglightColor,
                      ),
                      onPressed: () => Get.to(
                        () => const NotificationsPage(),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: .0),
                width: MediaQuery.of(context).size.width - 60,
                height: 200.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.5),
                      offset: const Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  border: Border.all(
                    color: buttonhiglightColor,
                    width: 2.0, // Adjust the width as needed
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Loyalty Goals',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          color: secondaryColor),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bronze',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: texthighlightColor,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          'Silver',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: texthighlightColor,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          'Gold',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: texthighlightColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width - 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 5.0,
                      ),
                      child: LinearPercentIndicator(
                        lineHeight: percent,
                        percent: 0.8,
                        barRadius: const Radius.circular(10.0),
                        backgroundColor: buttonhiglightColor,
                        progressColor:
                            highlightColor, //ganti jdi yg lbh bagus kali
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width - 50,
              //   height: 50.0,
              //   alignment: Alignment.center,
              //   child: buildTextField('Search...', Icons.search_outlined),
              // ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Promos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(left: paddingIcon, top: 30.0),
                    child: IconButton(
                      onPressed: () => Get.to(() => const PromoPage()),
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: buttonhiglightColor,
                      ),
                    ),
                  )
                ],
              ),
              carouselMake(imgPromos),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 1.0),
                    child: Text(
                      'Vouchers',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(left: paddingIcon, top: 1.0),
                    child: IconButton(
                      onPressed: () => Get.to(() => const VoucherPage()),
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: buttonhiglightColor,
                      ),
                    ),
                  )
                ],
              ),
              carouselMake(imgVouchers),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 1.0),
                    child: Text(
                      'Events',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(left: paddingIcon, top: 1.0),
                    child: IconButton(
                      onPressed: () => Get.to(() => const EventsPage()),
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: buttonhiglightColor,
                      ),
                    ),
                  )
                ],
              ),
              carouselMake(imgEvents),
            ],
          ),
        ),
      ),
    );
  }
}
