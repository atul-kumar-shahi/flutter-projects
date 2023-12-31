import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answer,required this.OnTap});

  final String answer;
  final void Function() OnTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: OnTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 40),

      ),
      child: Text(answer,textAlign: TextAlign.center,),
    );
  }
}
