import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override

  final currentquestion=question[0];
  Widget build(BuildContext context) {
    return  Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentquestion.question ,
          style: TextStyle(fontSize: 20,color: Colors.white),),
         const SizedBox(
            height: 30,
          ),
          AnswerButton(answer: currentquestion.answer[0],OnTap: (){},),
          AnswerButton(answer: currentquestion.answer[1],OnTap: (){},),
          AnswerButton(answer: currentquestion.answer[2],OnTap: (){},),
          AnswerButton(answer: currentquestion.answer[3],OnTap: (){},),


        ],
      ),
    );
  }
}
