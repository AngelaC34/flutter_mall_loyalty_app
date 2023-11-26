import 'package:flutter/material.dart';

import 'signup.dart';
import '../functions/text_input.dart';
import '../functions/password_input.dart';
import '../../utils/sizes.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController passw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(top: TSizes.topPad, bottom: TSizes.botPad, left: TSizes.leftPad, right: TSizes.rightPad),
        child: Column(
          children: [

            //JUDUL
            Text('Sign In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: TSizes.defPad),

              //EMAIL
              child: MakeTextField(label: 'Email', controller: email),
            ),

            SizedBox(height: 10),

            //PASSWORD
            PasswordTextField(controller: passw),

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
                      color: Color(0xFF717CE2),
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
                print('ini sign in button');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF717CE2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(200.0, 35.0),
              ),
              child: Text('Sign In'),
            ),

            SizedBox(height: 20),
            
            //Sign In with Other
            Row(
              children:[
                Flexible(child: Divider(color:Colors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
                Text("Or Sign In With", style: TextStyle(fontSize: 12)),
                Flexible(child: Divider(color:Colors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
              ]
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: (){},
                    icon: const Image(
                      width: 100,
                      height: 100,
                      image: AssetImage('assets/ImgGoogle.png'),
                    )
                  )
                ),
                SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: (){},
                    icon: const Image(
                      width: 50,
                      height: 50,
                      image: AssetImage('assets/ImgFacebook.png'),
                    )
                  )
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
                  color: Color(0xFF717CE2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
