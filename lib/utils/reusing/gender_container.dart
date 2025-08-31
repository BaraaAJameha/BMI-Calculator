import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  const GenderContainer({
    super.key,
    required this.image,
    required this.genderType,
    required this.color,
    required this.onTap,
  });
  final String image;
  final String genderType;
  final Color color;
  final Function() onTap;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Image.asset(
                widget.image,
                width: 100,
                height: 100,
                color: Colors.white,
              ),
              SizedBox(height: 16),
              Text(
                widget.genderType,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
