import 'package:flutter/material.dart';

class CustomSizedBoxHeight extends StatelessWidget {
  const CustomSizedBoxHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
    );
  }
}

class CustomSizedBoxWidth extends StatelessWidget {
  final double sWidth;
  const CustomSizedBoxWidth({super.key, required this.sWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
    );
  }
}