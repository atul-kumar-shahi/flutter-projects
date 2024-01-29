import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
      required this.color,
      required this.onPressed,
      required this.icon,
      super.key});

  final IconData icon;
  final void Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(icon),
        backgroundColor: color,
      ),
    );
  }
}
