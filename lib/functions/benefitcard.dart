import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class BenefitCard extends StatelessWidget {
  const BenefitCard({super.key, required this.benefitItems});
  final BenefitItems benefitItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: benefitItems.cardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            benefitItems.title,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            benefitItems.points,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            benefitItems.benefit,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitItems {
  var cardColor;
  String title;
  String points;
  String benefit;

  BenefitItems({
    required this.cardColor,
    required this.title,
    required this.points,
    required this.benefit,
  });
}