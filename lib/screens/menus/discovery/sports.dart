import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/gridmaker.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  List items = [
    GridItems(
        imageUrl: 'assets/discovery/sports/jdsports.jpg',
        gridName: 'JD SPORTS',
        summary:
            'The products that JD Sports offers include sporty slides, basketball shoes, casual shoes, running gear, and a variety of other options. For those who are practicing for the upcoming tournament, or want to refresh their style with a street fashion look, even just looking for comfortable sneakers for everyday wear, JD Sports is ready to complete.',
        location: 'Location on UG – 203'),
    GridItems(
        imageUrl: 'assets/discovery/sports/planetsport.jpg',
        gridName: 'PLANET SPORT',
        summary:
            'Planet Sports is a premium multi-brand sports retail featuring the world’s best brands such as Asics, Adidas, Nike, Reebok, Converse, Brooks, New Balance, Skechers, Puma, Speedo, Timex, Oakley, Wilson, Yonex and many more. Planet Sports is the largest chain of sports & kids shops in Indonesia, and primarily featured as flagship stores in the top malls in Indonesia with over 850 stores to support its mission of healthy & happy lifestyle in Indonesia.',
        location: 'Location on L2 – 124 & 126'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Sports',
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
      body: SingleChildScrollView(
        child: GridMaker(gridItems: items),
      ),
    );
  }
}
