import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

//ISI ONBOARDING
class OnboardData {
  final String image;
  final String title;
  final String desc;

  OnboardData({ 
    required this.image,
    required this.title,
    required this.desc});
  }

final List<OnboardData> Odata=[
  OnboardData(image: '',
  title: 'TITLE 1',
  desc: 'desc1'),

  OnboardData(image: '',
  title: 'TITLE 2',
  desc: 'desc 2'),

  OnboardData(image: '',
  title: 'TITLE 3',
  desc: 'desc 3'),
];

//SET
class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  
  const OnboardingContent({Key? key,
  required this.image,
  required this.title,
  required this.desc})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 270,
              ),
              const Spacer(),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}