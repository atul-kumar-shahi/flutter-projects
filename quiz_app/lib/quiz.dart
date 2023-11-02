import 'package:flutter/material.dart';
import 'package:quiz_app/qestion_screen.dart';
import 'package:quiz_app/homePage.dart';

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
  void switchScreen() {
    setState(() {
      activeScreen='Question screen' ;
    });
  }
  @override
  Widget build(BuildContext context) {
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
            child: activeScreen=='start screen'?HomePage(switchScreen):const QuestionScreen(),
        ),
      ),

    );
  }
}
