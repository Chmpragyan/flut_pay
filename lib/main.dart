// import 'package:flut_pay/presentation/secondary_screen/home_screen/screen/home_screen.dart';
import 'package:flut_pay/presentation/secondary_screen/my_account_screen.dart/screen/myaccount_screen.dart';
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
      home: MyAccountScreen(
      ),
    );
  }
}