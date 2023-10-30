import 'package:flutter/material.dart';
import 'package:demo_app/custom_text_widget.dart';

const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  void rolldice() {}

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
                onPressed: rolldice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28),padding:const EdgeInsets.symmetric(vertical: 20)),
                child: const Text('Roll Dice'))
          ],
        ),
      ),
    );
  }
}
