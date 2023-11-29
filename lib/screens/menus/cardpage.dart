import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/menus/benefitspage.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import '../../utils/universalvars.dart';
import '../../functions/text_input.dart';
import 'package:get/get.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  TextEditingController code = TextEditingController();
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
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 20.0),
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
                    color: buttonhiglightColor,
                    border: Border.all(
                      color: secondaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 25.0),
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
                        margin: EdgeInsets.only(left: 20.0, top: 1.0),
                        child: Text(
                          'Benefits Rank: ' + rank,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 1.0),
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
                        margin: EdgeInsets.only(left: 220.0, top: 50.0),
                        child: Text(
                          'Points: ${points}',
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
                  SizedBox(height: 30.0),
                  Row(
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
                        width: 10.0,
                      ),
                      SizedBox(
                        width: 150.0,
                        child:
                            MakeTextField(label: 'Code Here', controller: code),
                      )
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
}
