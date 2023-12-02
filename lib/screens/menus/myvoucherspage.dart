import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class MyVouchers extends StatefulWidget {
  const MyVouchers({super.key});

  @override
  State<MyVouchers> createState() => _MyVouchersState();
}

class _MyVouchersState extends State<MyVouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: buttonhiglightColor,
        ),
        title: Text(
          'My Vouchers',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            
          },
        ),
      ),
    );
  }
}
