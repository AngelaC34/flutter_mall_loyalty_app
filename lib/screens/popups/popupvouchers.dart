import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/sizes.dart';
import '../../functions/card.dart';

class PopUpVouchers extends StatelessWidget {
  const PopUpVouchers({super.key, required this.cardItems});
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: 20.0,
              left: TSizes.leftPad,
              bottom: TSizes.botPad,
              right: TSizes.rightPad),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  this.cardItems.imageUrl,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.cardItems.cardName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 5.0,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  this.cardItems.summary,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    height: 2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'Location: ' + this.cardItems.location,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Date: ' + this.cardItems.cardDate,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: buttonhiglightColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Claim Voucher',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
