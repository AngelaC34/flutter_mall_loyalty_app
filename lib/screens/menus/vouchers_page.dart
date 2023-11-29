import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  List items = [
    CardItems(
        imageUrl: 'assets/vouchers/voucher1.jpg',
        cardName: 'DELICIOUS DEALS IN COLLABORATION WITH TIKTOK',
        summary: 'Get Rp 50K F&B voucher on TikTok!',
        location: 'Info Desk, Laguna Atrium, GF',
        cardTime: '09.30 - 11.00',
        cardDate: '06 - 12 Nov 2023'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher2.jpg',
        cardName: 'THIS IS APRIL Get Voucher IDR 50K No Min. Purchase',
        summary: 'THIS IS APRIL GET VOUCHER Rp 50,000* No min purchase',
        location: 'L3 - 106',
        cardTime: '09.30 - 11.00',
        cardDate: '10 - 28 Nov 2023'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher3.jpg',
        cardName: "LEVI'S Get The Levi's Shopping Voucher Up To IDR 500K",
        summary:
            "Join Levi's®️ Red Tab member program and receive Claw Machine vouchers up to Rp500,000. It's time to play, and get the Levi's shopping voucher shop!",
        location: 'UG - 109',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher4.jpg',
        cardName: 'SEPHORA HOLIDAY JOYFUL GIFT',
        summary:
            'Unwrapping joy and spreading holiday cheer, one joyful gift at a time. Receive a Sephora Mystery Gift (worth up to IDR 600,000) with minimum spend IDR 2,000,000 on any brand.',
        location: 'GF - 102 & 103',
        cardTime: '09.30 - 11.00',
        cardDate: 'until 23 November 2023'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Vouchers',
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
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.45,
              child: CardBox(cardItems: items[index]),
            );
          },
        ),
      ),
    );
  }
}
