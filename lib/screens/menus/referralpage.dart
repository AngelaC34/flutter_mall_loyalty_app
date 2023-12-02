import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../utils/sizes.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: buttonhiglightColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(
                  top: TSizes.topPad, bottom: TSizes.botPad),
              alignment: Alignment.center,
              child: Text(
                'Referral Code',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor),
              ),
            ),
            Text(
              'Give your friends a reward and claim your own when they make a purchase.',
              style: TextStyle(
                  color: texthighlightColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: texthighlightColor,
                ),
              ),
              child: Text(
                'Give your friends a reward and claim your own when they make a purchase.',
                style: TextStyle(
                    color: texthighlightColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
