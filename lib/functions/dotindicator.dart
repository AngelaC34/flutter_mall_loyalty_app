import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key,this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: isActive ? buttonhiglightColor : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}