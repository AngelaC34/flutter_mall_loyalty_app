import 'package:flutter/material.dart';
import '../../functions/card.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key, required this.item});
  final CardItems item;
  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
