import 'package:calculator/customNumpad.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget {
  const Area({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NumPad()
        ],
      ),
    );

  }
}
