import 'package:bmi_project/utils/app_color.dart';
import 'package:bmi_project/utils/reusing/gender_container.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({
    super.key,
    required this.onTapMale,
    required this.colorMale,
    required this.onTapFemale,
    required this.colorFemale,
  });

  final Function() onTapMale;
  final Function() onTapFemale;
  final Color colorMale;
  final Color colorFemale;

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          GenderContainer(
            image: 'assets/images/male_icon.png',
            genderType: 'Male',
            color: widget.colorMale,
            onTap: widget.onTapMale,
          ),
          SizedBox(width: 10),
          GenderContainer(
            image: 'assets/images/female_icon.png',
            genderType: 'Female',
            color: widget.colorFemale,
            onTap: widget.onTapFemale,
          ),
        ],
      ),
    );
  }
}
