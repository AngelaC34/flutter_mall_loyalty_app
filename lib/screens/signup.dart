import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/bottomnavbar.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signin.dart';
import '../functions/text_input.dart';
import '../functions/password_input.dart';
import '../../utils/sizes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_uas_testing/screens/auth_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart' as globals;

class SignUpPage extends StatefulWidget {
  @override
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
        padding: EdgeInsets.only(
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
            SizedBox(height: 20),
            MakeTextField(label: 'Name', controller: inputUsername),
            SizedBox(height: 10),
            MakeTextField(label: 'Email', controller: inputEmail),
            SizedBox(height: 10),
            // MakeTextField(label: 'Phone Number', controller: phone),
            // SizedBox(height: 10),
            PasswordTextField(controller: inputPassword),
            SizedBox(height: 10),

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
                    setState(
                      () {
                        termsChecked = !termsChecked;
                      },
                    );
                  },
                ),
                TextButton(
                  onPressed: () {
                    print('ini Terms of Services');
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'I have read the ',
                            style: TextStyle(color: secondaryColor)),
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: secondaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            //BUTTON SIGN UP
            ElevatedButton(
              onPressed: () {
                _signUp();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonhiglightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(200.0, 35.0),
              ),
              child: Text('Create Account'),
            ),

            SizedBox(height: 10),
            //Sign In with Other
            Row(
              children: [
                Flexible(
                  child: Divider(
                    color: texthighlightColor,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ),
                Text("Or Sign Up With", style: TextStyle(fontSize: 12)),
                Flexible(
                  child: Divider(
                    color: texthighlightColor,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.google),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.facebook),
                  ),
                )
              ],
            ),

            Spacer(),
            //SIGN IN
            TextButton(
              onPressed: () {
                print('ini ke signin');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
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
    String username = inputUsername.text;
    String email = inputEmail.text;
    String password = inputPassword.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("succeed");
      await createUser();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavBar()));
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
      'email': inputEmail.text
    };
    await docUser.set(json);
    globals.points = 0;
    globals.username = inputUsername.text;
    globals.email = inputEmail.text;
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
