import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/auth_services.dart';
import '../functions/bottomnavbar.dart';
import '../utils/colors.dart';

import 'signup.dart';
import '../functions/text_input.dart';
import '../functions/password_input.dart';
import '../../utils/sizes.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // TextEditingController email = TextEditingController();
  // TextEditingController passw = TextEditingController();

  // @override
  // void dispose() {
  //   email.dispose();
  //   passw.dispose();
  //   super.dispose();
  // }

  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void dispose() {
    _username.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Sign In',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: secondaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: TSizes.defPad),

              //EMAIL
              child: MakeTextField(label: 'Email', controller: _email),
            ),

            SizedBox(height: 10),

            //PASSWORD
            PasswordTextField(controller: _password),

            //FORGOT PASS
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print('ini forgot pass');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: texthighlightColor,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(height: 10),
            ),

            //BUTTON SIGN IN
            ElevatedButton(
              // onPressed: () => Get.to(() => const NavBar()),
              onPressed: () {
                _signIn();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonhiglightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(200.0, 35.0),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(color: primaryColor, fontSize: 20.0),
              ),
            ),

            SizedBox(height: 20),

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
                Text(
                  "Or Sign In With",
                  style: TextStyle(fontSize: 12, color: secondaryColor),
                ),
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
                      border: Border.all(color: secondaryColor),
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.google),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor),
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.facebook),
                  ),
                )
              ],
            ),

            Spacer(),

            //SIGN UP
            TextButton(
              onPressed: () {
                print('ini signup');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text(
                "Don't have an account? Sign Up",
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

  void _signIn() async {
    String username = _username.text;
    String email = _email.text;
    String password = _password.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("succed");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavBar()));
    } else {
      print("Akun Salah");
    }
  }
}
