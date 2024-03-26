import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? customTitle;
  const CustomAppBar({super.key, this.customTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(customTitle ?? ''),
    );
  }
}