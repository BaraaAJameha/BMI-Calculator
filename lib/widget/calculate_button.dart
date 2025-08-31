
import 'dart:math';
import 'package:bmi_project/screen/result_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(fixedSize: Size(300, 50)),
      onPressed: () {
        var result = weight / pow(height / 100, 2);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(result: result),
          ),
        );
      },
      child: Text("Calculate"),
    );
  }
}
