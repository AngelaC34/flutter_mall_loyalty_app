import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key, required this.cardItems});
  final CardItems cardItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              this.cardItems.imageUrl,
              height: MediaQuery.sizeOf(context).height * 0.3,
              width: MediaQuery.sizeOf(context).width * 0.8,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 15.0),
            alignment: Alignment.center,
            child: Text(
              this.cardItems.cardName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(10.0),
          //   child: TextButton(
          //     child: Text('More Info'),
          //     onPressed: () => Get.to(
          //       () => const PromoPage(),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class CardItems {
  String imageUrl;
  String cardName;
  String summary;
  String location;
  String dateFrom;
  String dateTo;
  String getDisc;

  CardItems({
    required this.imageUrl,
    required this.cardName,
    required this.summary,
    required this.location,
    required this.dateFrom,
    required this.dateTo,
    required this.getDisc,
  });

  String get _imageUrl => imageUrl;
  String get _cardName => cardName;
  String get _summary => summary;
  String get _location => location;
  String get _dateFrom => dateFrom;
  String get _dateTo => dateTo;
  String get _getDisc => getDisc;
}
