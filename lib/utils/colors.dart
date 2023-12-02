import 'package:flutter/material.dart';

var primaryColor = const Color.fromARGB(255, 248, 247, 255);
var background = const Color.fromARGB(255, 246, 245, 249);
var secondaryColor = const Color.fromARGB(255, 13, 71, 161);
var texthighlightColor = const Color(0xFF717CE2);
var buttonhiglightColor = const Color(0xFF717CE2);
var borderColor = const Color.fromARGB(255, 204, 219, 253);
var progressColor = const Color.fromARGB(255, 255, 228, 94);
var errorColor = Colors.red;

//Shadow Color
var shadowColor = const Color.fromARGB(255, 13, 71, 161);

//Tier Color
var goldColor = const RadialGradient(
  colors: [
    Color(0xFFAE7C2B),
    Color.fromARGB(255, 178, 131, 54),
    Color.fromARGB(255, 146, 117, 50),
  ],
  stops: [0.0, 0.625, 1.0],
  center: Alignment.bottomRight,
  radius: 1.0,
);

var silverColor = const RadialGradient(
  colors: [
    Color(0xFF858484),
    Color(0xFF6C6B6B),
    Color.fromARGB(255, 103, 101, 101),
  ],
  stops: [0.0, 0.625, 1.0],
  center: Alignment.bottomRight,
  radius: 1.0,
);

var bronzeColor = const RadialGradient(
  colors: [
    Color.fromARGB(255, 237, 135, 104),
    Color.fromARGB(255, 190, 103, 76),
    Color(0xFFAE492B),
  ],
  stops: [0.0, 0.625, 1.0],
  center: Alignment.bottomRight,
  radius: 1.0,
);
