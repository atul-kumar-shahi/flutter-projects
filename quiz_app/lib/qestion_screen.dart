import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.choseOption});

  final void Function(String answer)choseOption;



  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndexQuestion = 0;
  void changeQuestionIndex(String choseCorrectOption) {
    widget.choseOption(choseCorrectOption);
    setState(() {
      currentIndexQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = question[currentIndexQuestion];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentquestion.question,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentquestion.getShuffledList().map((answers) {
            return AnswerButton(answer: answers, OnTap: (){
              changeQuestionIndex(answers);
            },
            );
          }),
        ],
      ),
    );
  }
}
