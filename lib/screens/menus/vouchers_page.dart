import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';
import 'package:get/get.dart';
import '../popups/popupvouchers.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  List items = [
    //tolong deh bagi yg mao tambahin namanya pendek dong gw males urusin paddingnya nnti
    CardItems(
        imageUrl: 'assets/vouchers/voucher1.jpg',
        cardName: 'DELICIOUS DEALS WITH TIKTOK',
        summary: 'Get Rp 50K F&B voucher on TikTok!',
        location: '-',
        dateFrom: '06-Nov-23',
        dateTo: '12-Nov-2023',
        getDisc: 'TIKTOKHEPICP'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher2.jpg',
        cardName: "THIS IS APRIL Get Voucher",
        summary: "THIS IS APRIL GET VOUCHER Rp 50,000* No min purchase",
        location: '-',
        dateFrom: '10-Nov-23',
        dateTo: '28-Nov-2023',
        getDisc: 'APRILSERUCP'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher3.jpg',
        cardName: "LEVI'S Shopping Voucher",
        summary: "Join Levi's Red Tab member program and receive Claw Machine vouchers up to Rp500,000. It's time to play, and get the Levi's shopping voucher shop!",
        location: '-',
        dateFrom: '12-Nov-23',
        dateTo: '14-Nov-2023',
        getDisc: 'LEVIXCP23'),
    CardItems(
        imageUrl: 'assets/vouchers/voucher4.jpg',
        cardName: 'SEPHORA HOLIDAY JOYFUL GIFT',
        summary: 'Unwrapping joy and spreading holiday cheer, one joyful gift at a time. Receive a Sephora Mystery Gift (worth up to IDR 600,000) with minimum spend IDR 2,000,000 on any brand.',
        location: '-',
        dateFrom: '01-Nov-23',
        dateTo: '23-Nov-2023',
        getDisc: 'SEPHORAGIFT23'),
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
            return InkWell(
              onTap: () => Get.to(
                () => PopUpVouchers(cardItems: this.items[index]),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.45,
                padding: EdgeInsets.all(5.0),
                child: CardBox(cardItems: items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
