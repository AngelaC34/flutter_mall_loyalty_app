import 'package:cloud_firestore/cloud_firestore.dart';
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
import 'package:flutter_uas_testing/utils/universalvars.dart' as globals;

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String _errorText = "";

  final FirebaseAuthService auth = FirebaseAuthService();
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  void dispose() {
    inputUsername.dispose();
    inputEmail.dispose();
    inputPassword.dispose();
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
              child: MakeTextField(label: 'Email', controller: inputEmail),
            ),

            SizedBox(height: 10),

            //PASSWORD
            PasswordTextField(controller: inputPassword),

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
              onPressed: () {
                wait();
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

            SizedBox(height: 10),

            //Error Text
            Text(
              _errorText,
              style: TextStyle(color: Colors.red),
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
    String username = inputUsername.text;
    String email = inputEmail.text;
    String password = inputPassword.text;

    User? user = await auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("succeed");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavBar()));
    } else {
      print("Akun Salah");
      _showError("Invalid email or password.");
    }
  }

  void _showError(String errorText) {
    setState(() {
      _errorText = errorText;
    });
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

  final CollectionReference _produk =
      FirebaseFirestore.instance.collection('user');

  Future<void> getNamaUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await for (var authState in auth.authStateChanges()) {
      if (authState != null) {
        try {
          DocumentSnapshot userSnapshot =
              await _produk.doc(authState.uid).get();

          if (userSnapshot.exists) {
            Map<String, dynamic> userData =
                userSnapshot.data() as Map<String, dynamic>;
            if (userData.containsKey('points') &&
                userData.containsKey('username') &&
                userData.containsKey('email')) {
              setState(() {
                globals.points = userData["points"];
                globals.username = userData["username"];
                globals.email = userData["email"];
              });
            } else {
              print(
                  'Kunci \'username\' tidak ditemukan dalam data user dengan ID ${authState.uid}');
            }
          } else {
            print(
                'Dokumen tidak ditemukan untuk user dengan ID ${authState.uid}');
          }
        } catch (e) {
          print('Error: $e');
        }
        break;
      }
    }
  }

  Future<void> wait() async {
    _signIn();
    await getUserID();
    await getNamaUser();
    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
  }
}
