// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/bottomnavbar.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signin.dart';
import '../functions/text_input.dart';
import '../functions/password_input.dart';
import '../../utils/sizes.dart';
import 'package:flutter_uas_testing/screens/auth_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart' as globals;
import '../functions/termsofservice.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool termsChecked = false;

  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
            top: TSizes.topPad,
            bottom: TSizes.botPad,
            left: TSizes.leftPad,
            right: TSizes.rightPad),
        child: Column(
          children: [
            //JUDUL
            Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor),
            ),

            //TEXT FIELD
            const SizedBox(height: 20),
            MakeTextField(label: 'Name', controller: inputUsername),
            const SizedBox(height: 10),
            MakeTextField(label: 'Email', controller: inputEmail),
            const SizedBox(height: 10),
            // MakeTextField(label: 'Phone Number', controller: phone),
            // SizedBox(height: 10),
            PasswordTextField(controller: inputPassword),
            const SizedBox(height: 10),

            //CHECKBOX
            Row(
              children: [
                Checkbox(
                  value: termsChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        BorderSide(width: 1.0, color: buttonhiglightColor),
                  ),
                  activeColor: buttonhiglightColor,
                  onChanged: (value) {
                    setState(() {
                      termsChecked = !termsChecked;
                    });
                  },
                ),
                TextButton(
                  onPressed: () {
                    print('ini Terms of Services');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsOfService()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'I have read the ',
                          style: TextStyle(color: secondaryColor),
                        ),
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: secondaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              const TermsOfService();
                            },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

//BUTTON SIGN UP
            ElevatedButton(
              onPressed: termsChecked ? _signUp : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonhiglightColor,
                disabledBackgroundColor: borderColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: const Size(200.0, 35.0),
              ),
              child: Text(
                'Create Account',
                style: TextStyle(color: primaryColor),
              ),
            ),

            const SizedBox(height: 20),

            //SIGN IN
            TextButton(
              onPressed: () {
                print('ini ke signin');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                );
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: texthighlightColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    String email = inputEmail.text;
    String password = inputPassword.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("succeed");
      await createUser();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const NavBar()));
    } else {
      print("error");
    }
  }

  Future createUser() async {
    await getUserID();
    final docUser =
        FirebaseFirestore.instance.collection('user').doc(globals.uid);

    final json = {
      'points': 0,
      'username': inputUsername.text,
      'email': inputEmail.text,
      'url':
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
    };
    await docUser.set(json);
    globals.points = 0;
    globals.username = inputUsername.text;
    globals.email = inputEmail.text;
    globals.photo =
        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";
  }

  Future<void> getUserID() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await for (var authState in auth.authStateChanges()) {
      if (authState != null) {
        globals.uid = authState.uid;
        print("User ID: ${globals.uid}");
        break;
      }
    }
  }
}
