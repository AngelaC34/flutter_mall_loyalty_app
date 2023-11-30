import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  List items = [
    CardItems(
        imageUrl: 'assets/promos/promo1.jpg',
        cardName: 'FOOT LOCKER BLACK FRIDAY',
        summary: 'BUY 2 GET 20% OFF',
        location: 'UG - 129',
        cardTime: '09.30 - 11.00',
        cardDate: '24 - 30 November 2023'),
    CardItems(
        imageUrl: 'assets/promos/promo2.jpg',
        cardName: 'ZARA BLACK FRIDAY Disc. Up To 40%',
        summary:
            'Enjoy 40% OFF over 1000 styles! Shop promo in store at Central Park - Ground Floor & online at https://www.zara.com/id/ or download our app.',
        location: 'Central Park - Ground Floor',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
    CardItems(
        imageUrl: 'assets/promos/promo3.jpg',
        cardName: 'OPTIK MELAWAI BUY 1 GET 1 FREE',
        summary:
            "Your wait is over! Enjoy BUY 1 GET 1 FREE* Shop in-store and enjoy 20% OFF on selected items. Let's visit Optik Melawai and don't miss it",
        location: 'UG - 101',
        cardTime: '09.30 - 11.00',
        cardDate: 'Nov 24,2023 - Jan 18,2024'),
    CardItems(
        imageUrl: 'assets/promos/promo4.jpg',
        cardName: 'POMELO Disc. Up To 20% OFF',
        summary:
            "Hi, #PomeloGirls! It's time to treat yourself to our fantastic offer! Shop in-store and enjoy 20% OFF on selected items.",
        location: 'Pomelo Central Park, UG Unit 201',
        cardTime: '09.30 - 11.00',
        cardDate: 'Nov 24th - Dec 3rd, 2023'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Promos',
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
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.65,
              child: CardBox(cardItems: items[index]),
            );
          },
        ),
      ),
    );
  }
}