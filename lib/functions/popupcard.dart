import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/sizes.dart';
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
        // title: Text(
        //   this.cardItems.cardName,
        //   style: TextStyle(
        //     fontSize: 30.0,
        //     fontWeight: FontWeight.w700,
        //     color: secondaryColor,
        //   ),
        // ),
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
                  height: 315.0,
                  width: 480.0,
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       child: Text(
              //         'Time: ' + this.cardItems.cardTime,
              //         style: TextStyle(
              //           color: secondaryColor,
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //     Container(
              //       child: Text(
              //         'Date: ' + this.cardItems.cardDate,
              //         style: TextStyle(
              //           color: secondaryColor,
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
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
                  'Time: ' + this.cardItems.cardTime,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}