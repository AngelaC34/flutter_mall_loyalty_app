import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'menus/promo_page.dart';
import '../functions/searchbar.dart';
import '../functions/carousel.dart';
import 'settingscreens/profilesettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double percent = 80.0;
  final List<String> imgPromos = [
    'assets/GREGOOOOOR.png',
    'assets/GWEGORRRRRRR.png',
    'assets/GREGORRROROROJEROJROEJREJ.png',
    'assets/Gregorrr.png',
  ];

  final double paddingIcon = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 100.0, left: 40.0),
                  child: ClipOval(
                    child: IconButton(
                      icon: Image.asset('assets/MilqStickerHeartver.png'),
                      iconSize: 70.0,
                      onPressed: () => Get.to(
                        () => const ProfileSettings(),
                      ),
                    ),
                    // child: Image(
                    //   image: AssetImage('assets/MilqStickerHeartver.png'),
                    //   fit: BoxFit.cover,
                    //   height: 70.0,
                    //   width: 70.0,
                    // ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 100.0,
                      ),
                      child: Text(
                        'Username',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 229, 237, 255),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 2.0,
                      ),
                      child: Text(
                        'Points Amount: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                          color: Color.fromARGB(255, 229, 237, 255),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_sharp,
                          color: Color.fromARGB(255, 229, 237, 255),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: Color.fromARGB(255, 229, 237, 255),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: MediaQuery.of(context).size.width - 60,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 229, 237, 255),
                  width: 2.0, // Adjust the width as needed
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Loyalty Goals',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 229, 237, 255)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bronze',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 229, 237, 255),
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
                          color: Color.fromARGB(255, 229, 237, 255),
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
                          color: Color.fromARGB(255, 229, 237, 255),
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
                      bottom: 10.0,
                    ),
                    child: LinearPercentIndicator(
                      lineHeight: percent,
                      percent: 0.8,
                      barRadius: const Radius.circular(10.0),
                      backgroundColor: const Color.fromARGB(255, 229, 237, 255),
                      progressColor: const Color.fromARGB(
                          255, 183, 198, 231), //ganti jdi yg lbh bagus kali
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              alignment: Alignment.center,
              child: buildTextField('Search...', Icons.search_outlined),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Promos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: paddingIcon, top: 30.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
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
                  margin: const EdgeInsets.only(left: 20.0, top: 1.0),
                  child: const Text(
                    'Vouchers',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: paddingIcon, top: 1.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
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
                  margin: const EdgeInsets.only(left: 20.0, top: 1.0),
                  child: const Text(
                    'Events',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: paddingIcon, top: 1.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
                    ),
                  ),
                )
              ],
            ),
            carouselMake(imgPromos),
          ],
        ),
      ),
    );
  }
}