import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20.0, // Adjust the top position as needed
          left: 20.0, // Adjust the left position as needed
          child: SizedBox(
            width: 60.0,
            height: 60.0,
            child: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMvnSkMMK0pynoPPXLXDthaZM-mYAHlzH2szYgDyU&s', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Positioned(
          top: 30.0, // Adjust the top position as needed
          left: 100.0, // Adjust the left position as needed
          child: Text(
            'Username',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
          top: 52.0,
          left: 100.0,
          child: Text(
            'Points: 100',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
          top: 30.0,
          left: 400.0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ),
        Positioned(
          top: 30.0,
          left: 450.0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline_rounded),
          ),
        ),
      ],
    );
  }
}
