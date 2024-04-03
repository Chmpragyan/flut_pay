import 'package:flut_pay/presentation/secondary_screen/summary/screen/summary_screen.dart';
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
      home: SummaryScreen(),
    );
  }
}