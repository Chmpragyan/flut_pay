import 'package:flutter/material.dart';

class CustomCircleContainer extends StatelessWidget {
  final Color? containerColor;
  const CustomCircleContainer({super.key, this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}