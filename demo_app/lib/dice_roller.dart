import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }

}


class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage='assets/images/dice-1.png';
   int currentDiceRoll=2;
  void rolldice() {
    currentDiceRoll=Random().nextInt(6)+1;
    setState(() {
      activeDiceImage='assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),padding:const EdgeInsets.symmetric(vertical: 20)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
