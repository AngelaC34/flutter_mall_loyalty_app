import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class BenefitCard extends StatelessWidget {
  const BenefitCard({super.key, required this.benefitItems});
  final BenefitItems benefitItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: benefitItems.cardColor,
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
      child: Padding(
        padding: const EdgeInsets.all(14.0),
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
            SizedBox(
              height: 10,
            ),
            for (var benefit in benefitItems.benefits)
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 10.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    benefit,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class BenefitItems {
  Gradient cardColor;
  String title;
  String points;
  List<String> benefits;

  BenefitItems({
    required this.cardColor,
    required this.title,
    required this.points,
    required this.benefits,
  });
}
