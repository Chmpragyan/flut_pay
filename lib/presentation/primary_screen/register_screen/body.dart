import 'package:flutter/material.dart';

import 'screen/register_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: RegisterBody(),
        ),
      ),
    );
  }
}