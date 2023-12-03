// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/onboarding.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  _startAnimation() async {
    await Future.delayed(const Duration(seconds: 0));

    setState(() {
      _isTextVisible = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const OnboardingScreen(),
    ));
  }

  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ANIMASI LOGO
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: _isTextVisible ? 200 : 100,
              width: _isTextVisible ? 200 : 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/LogoDark.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            //ANIMASI TEKS
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: _isTextVisible ? 1.0 : 0.0,
              child: Text(
                "Welcome to Central Park's Loyalty App!",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}