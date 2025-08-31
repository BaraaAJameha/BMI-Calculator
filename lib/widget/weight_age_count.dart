import 'package:bmi_project/utils/app_color.dart';
import 'package:bmi_project/utils/reusing/count_button.dart';
import 'package:flutter/material.dart';

class WeightAgeCount extends StatelessWidget {
  const WeightAgeCount({
    super.key,
    required this.weightAddTap,
    required this.weightRemoveTap,
    required this.ageAddTap,
    required this.ageRemoveTap,
    required this.weight,
    required this.age,
  });

  final Function() weightAddTap;
  final Function() weightRemoveTap;
  final Function() ageAddTap;
  final Function() ageRemoveTap;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Weight Section
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Weight',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    '$weight',
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      countButton(
                        onTap: weightAddTap, 
                        tag: 'weight ++',
                        icon: Icons.add,
                      ),
                      const SizedBox(width: 10),
                      countButton(
                        onTap: weightRemoveTap, 
                        tag: 'weight --',
                        icon: Icons.remove,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        // Age Section
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Age',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    '$age',
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      countButton(
                        onTap: ageAddTap, 
                        tag: 'age ++',
                        icon: Icons.add,
                      ),
                      const SizedBox(width: 10),
                      countButton(
                        onTap: ageRemoveTap, 
                        tag: 'age --',
                        icon: Icons.remove,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
