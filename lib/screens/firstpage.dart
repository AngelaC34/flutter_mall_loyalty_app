import 'package:flutter/material.dart';
import 'signin.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 200.0),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter background demo',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 62, 71, 114)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to ...!',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
              const Text(
                'Tagline!',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 229, 237, 255),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                child: Container(
                  width: 150,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color.fromARGB(255, 62, 71, 114),
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 62, 71, 114),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
