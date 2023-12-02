import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

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
          'FAQ',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Accordion(
                headerBorderColor: Colors.blueGrey,
                headerBorderColorOpened: Colors.transparent,
                // headerBorderWidth: 1,
                headerBackgroundColorOpened: Colors.green,
                contentBackgroundColor: Colors.white,
                contentBorderColor: Colors.green,
                contentBorderWidth: 3,
                contentHorizontalPadding: 20,
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                    isOpen: true,
                    contentVerticalPadding: 20,
                    leftIcon: const Icon(Icons.text_fields_rounded,
                        color: Colors.white),
                    header: const Text('Simple Text'),
                    content: const Text('wawa'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
