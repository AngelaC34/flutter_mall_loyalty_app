import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/dotindicator.dart';
import 'package:flutter_uas_testing/functions/onboard.dart';
import 'package:flutter_uas_testing/screens/signin.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  
  int _indexPage = 0;
  
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _indexPage > 0,
                    child: IconButton(
                      onPressed: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                    ),
                  ),
                  
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignInPage()));
                      },

                      child: Padding(
                        padding: const EdgeInsets.only(top: 12,bottom:12),
                        child: const Text('Skip',
                          style: TextStyle(
                              color: Color(0xFF717CE2),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                ],
              ),
            ),

            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _indexPage = index;
                  });
                },

                itemCount: Odata.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardingContent(
                    image: Odata[index].image,
                    title: Odata[index].title,
                    desc: Odata[index].desc),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  Odata.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: DotIndicator(
                      isActive: index == _indexPage,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: InkWell(
                onTap: () {
                  if (_indexPage == Odata.length - 1) {
                    Navigator.push(
                        context, MaterialPageRoute(builder:
                        (context) => SignInPage()));
                  }
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },

                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: buttonhiglightColor,
                  ),

                  child: Center(
                    child: Text(_indexPage == Odata.length - 1
                          ? 'Get Started'
                          : 'Next',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 85,
            ),
          ],
        ),
      ),
    );
  }
  }