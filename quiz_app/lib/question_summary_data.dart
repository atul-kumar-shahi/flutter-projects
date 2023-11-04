import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});

  List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['Question Index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(color: Colors.white)),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['Question'] as String,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['Correct answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 18, 215, 113)),
                        ),
                        Text(
                          data['Chosen answer'] as String,
                          style: TextStyle(
                              color: Color.fromARGB(255, 192, 14, 14)),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
