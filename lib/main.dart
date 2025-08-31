import 'package:bmi_project/screen/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI App',
      theme: ThemeData(),
      home: BmiCalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
