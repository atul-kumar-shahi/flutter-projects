import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.answerPressed});

  final List<String>answerPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have answered 3 out of 6 questions Correctly!',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            const Text('Here we will have the question ans the answer list '),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed:(){} , child:const  Text('Start again'))

          ],
        ),
      ),
    );
  }
}
