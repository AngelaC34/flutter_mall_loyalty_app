import 'package:flutter/material.dart';
import 'signin.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passw = TextEditingController();
  bool termsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            buildTextField('Name', nama),
            SizedBox(height: 10),
            buildTextField('Email', email),
            SizedBox(height: 10),
            buildPasswordTextField(),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: termsChecked,
                  onChanged: (value) {
                    print('ini checkbox');
                  },
                ),
                Text('I have read the Terms of Service'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('ini sign up button');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF717CE2),
              ),
              child: Text('Sign Up'),
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
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Text(
                'Already have an account? Sign In',
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
