import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/settingstextfield.dart';
import 'package:flutter_uas_testing/screens/menus/benefitspage.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import '../../utils/universalvars.dart';
import 'package:get/get.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  TextEditingController code = TextEditingController();

  void redeemCode(String enteredCode) {
    switch (enteredCode) {
      case "TYFSPASPR":
        setState(() {
          points += 100;
          addPoints();
        });
        print("Code redeemed successfully! Points: $points, Rank: $rank");
        break;
      default:
        print("Invalid code. Please try again.");
    }
  }

  String determineRank(int points) {
    if (points >= 250) {
      return 'Gold';
    } else if (points >= 100) {
      return 'Silver';
    } else {
      return 'Bronze';
    }
  }

  Gradient determineCardColor(int points) {
    if (points >= 250) {
      return goldColor;
    } else if (points >= 100) {
      return silverColor;
    } else {
      return bronzeColor;
    }
  }

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
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'My Card',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(
                  () => const BenefitsPage(),
                ),
                child: Container(
                  height: 220.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    gradient: determineCardColor(points),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, top: 25.0),
                        child: Text(
                          username,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, top: 1.0),
                        child: Text(
                          'Benefits Rank: ${determineRank(points)}',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, top: 1.0),
                        child: Text(
                          'See More Benefits',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 220.0, top: 50.0),
                        child: Text(
                          'Points: $points',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200.0,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Redeem Code: ',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150.0,
                          child: Txtfield(
                            controller: code,
                            label: 'Code',
                          )),
                    ],
                  ),
                  //bisa nambahin yang lain disini
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future addPoints() async {
    final docUser = FirebaseFirestore.instance.collection('user').doc(uid);

    final json = {
      'points': points,
      'username': username,
      'email': email,
      'url': photo
    };
    await docUser.set(json);
  }
}
