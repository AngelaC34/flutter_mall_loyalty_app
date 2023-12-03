import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});

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
          color: isActive ? buttonhiglightColor : borderColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}