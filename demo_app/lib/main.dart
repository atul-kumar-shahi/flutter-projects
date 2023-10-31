import 'package:flutter/material.dart';
import 'package:demo_app/gradien_colors.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(
           Color.fromARGB(255, 88, 173, 129),
           Color.fromARGB(255, 21, 178, 97),
        ),
      ),
    ),
  );
}
