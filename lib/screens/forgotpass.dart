import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'signin.dart';
import '../../utils/sizes.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key:key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController email = TextEditingController();

  @override
  void dispose(){
    email.dispose();
    super.dispose();
  }
  
  Future<void> passwordReset() async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text.trim());
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Password reset link sent! Check your email'),
        );
      },
    );
    setState(() {
      email.text = '';
    });
  } on FirebaseAuthException catch (e) {
    print(e);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
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
        backgroundColor: texthighlightColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defPad),
          child: Column(
            children: [
              Text('Reset your password', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('Enter your email address associated with your account.', textAlign: TextAlign.center,),
              SizedBox(height: 10),
              Text('We will email you a link to reset your password.', textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: primaryColor)),
              SizedBox(height: 20),
              ElevatedButton(
              onPressed: (){
                passwordReset();
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: texthighlightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(200.0, 35.0),
              ), child: Text('Send')),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}