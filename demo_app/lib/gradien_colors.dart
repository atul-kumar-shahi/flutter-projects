import 'package:flutter/material.dart';
import 'package:demo_app/custom_text_widget.dart';
import 'package:demo_app/dice_roller.dart';

const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startGradient,
          end: endGradient,
        ),
      ),
      child: const Center(
        child:DiceRoller(),
      ),
    );
  }
}
