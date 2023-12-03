import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/benefitcard.dart';

class BenefitsPage extends StatefulWidget {
  const BenefitsPage({super.key});

  @override
  State<BenefitsPage> createState() => _BenefitsPageState();
}

class _BenefitsPageState extends State<BenefitsPage> {
  List items = [
    BenefitItems(
        cardColor: bronzeColor,
        title: 'Bronze',
        points: '0-99 points',
        benefits: [
          'Earn points on purchases', 
          'Two hours complimentary car parking weekly',
          'Early access to sales'
        ],),
    BenefitItems(
        cardColor: silverColor,
        title: 'Silver',
        points: '100-249 points',
        benefits: [
          'Earn points on purchases', 
          'Two hours complimentary car parking week',
          'Early access to sales',
          'Extra rewards points on specially selected days',
          'Priority event registration'
        ],),
    BenefitItems(
        cardColor: goldColor,
        title: 'Gold',
        points: '250 - 500 points',
        benefits: [
          'Earn points on purchases', 
          'Two hours complimentary car parking daily',
          'Early access to sales',
          'Extra rewards points on specially selected days',
          'Priority event registration'
        ],),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Benefits',
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
            size: 30.0,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 200,
              height: 350,
              child: BenefitCard(benefitItems: items[index]),
            );
          },
        ),
      ),
    );
  }
}