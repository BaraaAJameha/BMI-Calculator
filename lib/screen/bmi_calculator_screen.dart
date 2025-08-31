import 'dart:math';
import 'package:bmi_project/utils/app_color.dart';
import 'package:bmi_project/screen/result_screen.dart';
import 'package:bmi_project/utils/reusing/count_button.dart';
import 'package:bmi_project/utils/reusing/gender_container.dart';
import 'package:bmi_project/widget/calculate_button.dart';
import 'package:bmi_project/widget/height_slider.dart';
import 'package:bmi_project/widget/select_gender.dart';
import 'package:bmi_project/widget/weight_age_count.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  bool isMale = true;
  double height = 100.0;
  int weight = 75;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          // Gender Section
          SelectGender(
            onTapMale: () {
              setState(() {
                isMale = true;
              });
            },
            colorMale: isMale ? Colors.blue : containerColor,
            onTapFemale: () {
              setState(() {
                isMale = false;
              });
            },
            colorFemale: isMale ? containerColor : Colors.blue,
          ),

          // Height Section
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: HeightSlider(
              height: height,
              onChange: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),

          WeightAgeCount(
            weightAddTap: () {
              setState(() {
                weight++;
              });
            },
            weightRemoveTap: () {
              setState(() {
                weight--;
              });
            },
            ageAddTap: () {
              setState(() {
                age++;
              });
            },
            ageRemoveTap: () {
              setState(() {
                age--;
              });
            },
            weight: weight,
            age: age,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: CalculateButton(weight: weight, height: height)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
