// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/settingstextfield.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../../utils/sizes.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController email = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  Future<void> passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Password reset link sent! Check your email'),
          );
        },
      );
      setState(() {
        email.text = '';
      });
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Failed to send password reset email'),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: primaryColor,
        elevation: 0,
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
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defPad),
          child: Column(
            children: [
              Text(
                'Reset your password',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor),
              ),
              const SizedBox(height: 20),
              Text(
                'Enter your email address associated with your account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor),
              ),
              const SizedBox(height: 10),
              Text(
                'We will email you a link to reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: texthighlightColor),
              ),
              const SizedBox(
                height: 20,
              ),
              SetTextField(controller: email),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    passwordReset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: texthighlightColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(200.0, 35.0),
                  ),
                  child: const Text('Send')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}