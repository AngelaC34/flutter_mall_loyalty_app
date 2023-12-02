import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/sizes.dart';

//ISI ONBOARDING
class OnboardData {
  final String image;
  final String title;
  final String desc;

  OnboardData({required this.image, required this.title, required this.desc});
}

final List<OnboardData> oData = [
  OnboardData(
      image: 'assets/onboarding/1st.png',
      title: 'Discover Endless Rewards',
      desc:
          'Explore a world of shopping delights at Central Park Mall. Earn points with every purchase and embark on a journey to unlock exclusive loyalty benefits.'),
  OnboardData(
      image: 'assets/onboarding/2nd.png',
      title: 'Earn Points as You Shop',
      desc:
          'Shop at your beloved stores and watch your loyalty points grow. The more you shop, the closer you get to unlocking amazing perks and special discounts.'),
  OnboardData(
      image: 'assets/onboarding/3rd.png',
      title: 'Unlock Exclusive Benefits',
      desc:
          'Your loyalty deserves to be rewarded. Unlock a world of exclusive benefits, from special discounts to exciting surprises. Start enjoying perks tailor-made for you!'),
];

//SET
class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String desc;

  const OnboardingContent(
      {super.key, required this.image, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top: TSizes.topPad,
                bottom: TSizes.botPad,
                left: TSizes.leftPad,
                right: TSizes.rightPad),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                ),
                const Spacer(),
                Text(
                  title,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: texthighlightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
