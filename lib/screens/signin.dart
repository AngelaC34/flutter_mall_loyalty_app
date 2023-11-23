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
      backgroundColor: Color.fromARGB(255, 62, 71, 114),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 237, 255)),
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
                backgroundColor: Color.fromARGB(255, 229, 237, 255),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Color.fromARGB(255, 62, 71, 114),
                ),
              ),
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
                  color: Color.fromARGB(255, 229, 237, 255),
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
                  color: Color.fromARGB(255, 229, 237, 255),
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
      style: TextStyle(
          color: Color.fromARGB(255, 229, 237, 255)), 
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Color.fromARGB(255, 229, 237, 255)),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 229, 237, 255)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 229, 237, 255)),
        ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return TextField(
      controller: passw,
      obscureText: true,
      style: TextStyle(color: Color.fromARGB(255, 229, 237, 255)),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Color.fromARGB(255, 229, 237, 255)),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 229, 237, 255)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 229, 237, 255)),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility),
          color: Color.fromARGB(255, 229, 237, 255),
          onPressed: () {
            print('ini untuk visibility');
          },
        ),
      ),
    );
  }
}
