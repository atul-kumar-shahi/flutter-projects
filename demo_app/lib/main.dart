import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home:Scaffold(
      body:GradientColor(),
    )
  ),);
}

class GradientColor extends StatelessWidget {
  const GradientColor({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 88, 173, 129),
            Color.fromARGB(255, 21, 178, 97),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: Text(
            "Hello world", style: TextStyle(color: Colors.white, fontSize: 28)),
      ),
    );
  }
}

