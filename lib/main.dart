import 'package:flut_pay/presentation/primary_screen/login_screen/body.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CalenderScreen(),
      home: LoginScreen(),
    );
  }
}