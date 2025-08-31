import 'package:bmi_project/utils/app_color.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  const ResultScreen({super.key, required this.result});

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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    if (result < 18.5)
                      Text(
                        "Underweight",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    if (result >= 18.5 && result < 25)
                      Text(
                        "Normal",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    if (result >= 25 && result < 29.9)
                      Text(
                        "Overweight",
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                    if (result >= 30)
                      Text(
                        "Obesity",
                        style: TextStyle(fontSize: 20, color: Colors.redAccent),
                      ),

                    SizedBox(height: 20),
                    Text(
                      "${result.round()}",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textAlign: TextAlign.center,
                      "You have a normal body weight ,good job!",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(300, 50)),
              child: Text("Re Calculate"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
