import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/group.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/discoverylist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../functions/gridmaker.dart';
import '../../utils/sizes.dart';
import 'package:get/get.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
            top: TSizes.topPad,
            left: TSizes.leftPad,
            bottom: TSizes.botPad,
            right: TSizes.rightPad),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Discovery',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                color: secondaryColor,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //fashion and accessories
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => Group(
                                  gridItems: fashion,
                                  type: 'Fashion & Accessories'),
                            ),
                        color: primaryColor,
                        icon: const FaIcon(FontAwesomeIcons.shirt)),
                  ),
                  //gourmet delights
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => Group(
                                  gridItems: food, type: 'Gourmet Delights'),
                            ),
                        color: primaryColor,
                        icon: const FaIcon(FontAwesomeIcons.utensils)),
                  ),
                  //groceries
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => Group(
                                  gridItems: groceries, type: 'Groceries'),
                            ),
                        color: primaryColor,
                        icon: const FaIcon(FontAwesomeIcons.cartShopping)),
                  ),
                  //Sports
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => Group(gridItems: sports, type: 'Sports'),
                            ),
                        color: primaryColor,
                        icon: const FaIcon(Icons.sports_cricket_rounded)),
                  ),
                  //hobies and entertainment,travel
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => Group(
                                  gridItems: entertainment,
                                  type: 'Hobbies & Entertainment, Travel'),
                            ),
                        color: primaryColor,
                        icon: const FaIcon(FontAwesomeIcons.film)),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              // Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              //   //Sports
              //   Container(
              //     height: 60.0,
              //     width: 60.0,
              //     decoration: BoxDecoration(
              //       color: buttonhiglightColor,
              //       shape: BoxShape.circle,
              //     ),
              //     child: IconButton(
              //         onPressed: () => Get.to(
              //               () => Group(gridItems: sports, type: 'Sports'),
              //             ),
              //         color: primaryColor,
              //         icon: const FaIcon(FontAwesomeIcons.baseball)),
              //   ),
              //   //Education, Services & Worship Place
              //   Container(
              //     height: 60.0,
              //     width: 60.0,
              //     decoration: BoxDecoration(
              //       color: buttonhiglightColor,
              //       shape: BoxShape.circle,
              //     ),
              //     child: IconButton(
              //         onPressed: () => Get.to(
              //               () => Group(
              //                   gridItems: education,
              //                   type: 'Education, Services & Worship Place'),
              //             ),
              //         color: primaryColor,
              //         icon: const FaIcon(FontAwesomeIcons.bookOpen)),
              //   ),
              //   //Gadget & Tech
              //   Container(
              //     height: 60.0,
              //     width: 60.0,
              //     decoration: BoxDecoration(
              //       color: buttonhiglightColor,
              //       shape: BoxShape.circle,
              //     ),
              //     child: IconButton(
              //         onPressed: () => Get.to(
              //               () => Group(gridItems: tech, type: 'Gadget & Tech'),
              //             ),
              //         color: primaryColor,
              //         icon: const FaIcon(FontAwesomeIcons.computer)),
              //   ),
              //   //Home & Living
              //   Container(
              //     height: 60.0,
              //     width: 60.0,
              //     decoration: BoxDecoration(
              //       color: buttonhiglightColor,
              //       shape: BoxShape.circle,
              //     ),
              //     child: IconButton(
              //         onPressed: () => Get.to(
              //               () => Group(
              //                   gridItems: homeliving, type: 'Home & Living'),
              //             ),
              //         color: primaryColor,
              //         icon: const FaIcon(FontAwesomeIcons.house)),
              //   ),
              //   //Beauty and Wellness
              //   Container(
              //     height: 60.0,
              //     width: 60.0,
              //     decoration: BoxDecoration(
              //       color: buttonhiglightColor,
              //       shape: BoxShape.circle,
              //     ),
              //     child: IconButton(
              //         onPressed: () => Get.to(
              //               () => Group(
              //                   gridItems: beauty, type: 'Beauty & Wellness'),
              //             ),
              //         color: primaryColor,
              //         icon: const FaIcon(Icons.face_2_rounded)),
              //   ),
              // ])
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Popular Stores',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: secondaryColor,
              ),
            ),
          ),
          GridMaker(gridItems: popular),
        ]),
      ),
    ));
  }
}
