import 'package:flutter/material.dart';

class countButton extends StatelessWidget {
  const countButton({super.key, required this.onTap, required this.tag, required this.icon});
  final Function() onTap;
  final String tag;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: onTap,
      heroTag: tag,
      mini: true,
      child: Icon(icon),
    );
  }
}
