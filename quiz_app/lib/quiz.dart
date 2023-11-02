import 'package:flutter/material.dart';
import 'package:quiz_app/qestion_screen.dart';
import 'package:quiz_app/homePage.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {

  // //pass the function as argument to Homepage and while passing do not use parenthesis at the end or it will execute it immediatly.
  //
  // Widget ?activeScreen;
  //
  // //use in built init to pass and initialize it at the time of first execution of the widget.
  // @override
  // void initState() {
  //   activeScreen=HomePage(switchScreen);
  //   super.initState();
  // }


  //another way to initialize your variable while building your widget
  var activeScreen='start screen';

  List<String>selectedAnswer=[];

  void switchScreen() {
    setState(() {
      activeScreen='Question screen' ;
    });
  }

  void choseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length==question.length)
      {
        setState(() {
          activeScreen='answerScreen';
          selectedAnswer=[];
        });
      }
  }



  @override
  Widget build(BuildContext context) {
    Widget? showScreen;
    if(activeScreen=='start screen') {
      showScreen=HomePage(switchScreen);
    } else if(activeScreen=='Question screen'){
      showScreen=QuestionScreen(choseOption: choseAnswer);}
    else if(activeScreen=='answerScreen'){
      showScreen=ResultScreen(answerPressed: selectedAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 35, 5, 75),
                  Color.fromARGB(255, 97, 17, 213),

                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: showScreen,
        ),
      ),

    );
  }
}
