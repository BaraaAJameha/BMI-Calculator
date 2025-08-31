import 'package:bmi_project/utils/app_color.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  HeightSlider({super.key, required this.height, required this.onChange});

  late final double height;
  final ValueChanged<double> onChange;

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text("Height", style: TextStyle(color: Colors.grey, fontSize: 18)),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "${widget.height.round()}",
                style: TextStyle(color: Colors.grey, fontSize: 34),
              ),
              Text("cm", style: TextStyle(color: Colors.grey, fontSize: 18)),
            ],
          ),
          Slider(
            value: widget.height,
            min: 70,
            max: 200,
            onChanged: widget.onChange,
          ),
        ],
      ),
    );
  }
}
