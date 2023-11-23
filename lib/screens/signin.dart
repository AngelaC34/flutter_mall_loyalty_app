import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/mainpage.dart';
import 'signup.dart';

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
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: buildTextField('Email', email),
            ),
            SizedBox(height: 10),
            buildPasswordTextField(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(height: 10),
            ),
            ElevatedButton(
              onPressed: () {
                print('ini sign in button');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF717CE2),
              ),
              child: Text('Sign In'),
            ),
            SizedBox(height: 10),
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
            TextButton(
              onPressed: () {
                print('ini signin');
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

  Widget buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
        ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return TextField(
      controller: passw,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility),
          onPressed: () {
            print('ini untuk visibility');
          },
        ),
      ),
    );
  }
}
