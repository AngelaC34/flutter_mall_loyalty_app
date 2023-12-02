import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/gridmaker.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  List items = [
    GridItems(
        imageUrl: 'assets/discovery/groceries/kkv.png',
        gridName: 'KKV',
        summary:
            'KKV is generated from KK Guan as an independent W-brand. KKV was set up in May 2019, which serves as an integrated shop of exquisite life style.',
        location: 'Location on LGM – 01'),
    GridItems(
        imageUrl: 'assets/discovery/groceries/miniso.png',
        gridName: 'Miniso',
        summary:
            'MINISO advocates the philosophy of quality life and in the brand spirit of “respecting consumers”, dedicates itself to providing customers with products of “high quality, competitive price and creativity”. With simple and quality features as well as leading the trend of intelligent consumption, MINISO enriches our lives with a wide range of products at reasonable prices.',
        location: 'Location on L1 – 109 & 110'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Groceries',
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
