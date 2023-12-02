import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/onboarding.dart';

class FirstPage extends StatefulWidget {
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
      builder: (context) => OnboardingScreen(),
    ));
  }

  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/DarkLogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            //ANIMASI TEKS
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: _isTextVisible ? 1.0 : 0.0,
              child: const Text(
                "Welcome to Central Park's Loyalty App!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}