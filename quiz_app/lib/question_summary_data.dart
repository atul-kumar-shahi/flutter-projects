import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData,{super.key});

  List<Map<String,Object>>summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return  Row(
              children: [
                Text(((data['Question Index']as int)+1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['Question']as String),
                     const SizedBox(height: 5,),
                      Text(data['Correct answer']as String),
                      Text(data['Chosen answer']as String),
                    ],
                  ),
                )
              ],
            );
          },).toList(),
        ),
      ),
    );
  }
}
