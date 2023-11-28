import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';

class PopUpCard extends StatelessWidget {
  const PopUpCard({super.key, required this.cardItems});
  final CardItems cardItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: primaryColor,
        elevation: 0,
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                this.cardItems.imageUrl,
                height: 315.0,
                width: 480.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
                this.cardItems.cardName,
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 5.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Text(this.cardItems.summary),
            ),
          ],
        ),
      ),
    );
  }
}
