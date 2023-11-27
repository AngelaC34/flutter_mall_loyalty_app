import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/menus/cardpage.dart';
import 'package:get/get.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key, required this.cardItems});
  final CardItems cardItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 237, 255),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: InkWell(
              onTap: () => Get.to(
                () => const CardPage(),
              ),
              child: Image.asset(
                this.cardItems._imageUrl,
                height: 320.0,
                width: 400.0,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Text(
              this.cardItems.cardName,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 62, 71, 114),
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

  CardItems({
    required this.imageUrl,
    required this.cardName,
    required this.summary,
    required this.location,
  });

  String get _imageUrl => imageUrl;
  String get _cardName => cardName;
  String get _summary => summary;
  String get _location => location;
}
