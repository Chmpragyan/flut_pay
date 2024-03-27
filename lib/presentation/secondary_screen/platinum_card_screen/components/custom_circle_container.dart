import 'package:flutter/material.dart';

class CustomCircleCont extends StatelessWidget {
  final Color? contColor;
  const CustomCircleCont({super.key, this.contColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: contColor,
        borderRadius: BorderRadius.circular(40.0),
      ),
    );
  }
}
