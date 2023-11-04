import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary_data.dart';

class ResultScreen extends StatelessWidget {
 const  ResultScreen({super.key, required this.answerPressed,required this.onRestart});
 final void Function() onRestart;

  final List<String> answerPressed;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < answerPressed.length; i++) {
      summary.add(
        {
          'Question Index': i,
          'Question': question[i].question,
          'Chosen answer': answerPressed[i],
          'Correct answer': question[i].answer[0],
        },

      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData=getSummaryData();
    final totalQuestion=question.length;
    final totalCorrectAnswer=summaryData.where((data) {
      return data['Chosen answer']==data['Correct answer'];
    }).length;


    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'You have answered $totalCorrectAnswer out of $totalQuestion questions Correctly!',
              style: const TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),

            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed:onRestart, child: const Text('Start again'))
          ],
        ),
      ),
    );
  }
}
