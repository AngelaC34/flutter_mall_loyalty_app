import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';
import '../popups/popuppromos.dart';
import 'package:get/get.dart';

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
        location: 'UG',
        dateFrom: '24-Nov-23 - ',
        dateTo: '30-Nov-23',
        getDisc: ''),
    CardItems(
        imageUrl: 'assets/promos/promo2.jpg',
        cardName: 'ZARA BLACK FRIDAY Disc. Up To 40%',
        summary:
            'Enjoy 40% OFF over 1000 styles! Shop promo in store at Central Park - Ground Floor & online at https://www.zara.com/id/ or download our app.',
        location: 'Ground Floor',
        dateFrom: 'Every Friday',
        dateTo: '',
        getDisc: '',),
    CardItems(
        imageUrl: 'assets/promos/promo3.jpg',
        cardName: 'OPTIK MELAWAI BUY 1 GET 1 FREE',
        summary:
            "Your wait is over! Enjoy BUY 1 GET 1 FREE* Shop in-store and enjoy 20% OFF on selected items. Let's visit Optik Melawai and don't miss it",
        location: 'UG',
        dateFrom: '24-Nov-23 - ',
        dateTo: '18-1-24',
        getDisc: '',),
    CardItems(
        imageUrl: 'assets/promos/promo4.jpg',
        cardName: 'POMELO Disc. Up To 20% OFF',
        summary:
            "Hi, #PomeloGirls! It's time to treat yourself to our fantastic offer! Shop in-store and enjoy 20% OFF on selected items.",
        location: 'UG',
        dateFrom: '24-Nov-23 - ',
        dateTo: '03-Dec-23',
        getDisc: '',),
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
            return InkWell(
              onTap: () => Get.to(
                () => PopUpPromos(cardItems: items[index]),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.45,
                padding: const EdgeInsets.all(5.0),
                child: CardBox(cardItems: items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
