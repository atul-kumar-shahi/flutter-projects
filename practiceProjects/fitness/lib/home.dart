import 'package:fitness/pages/appBar.dart';
import 'package:fitness/pages/searchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(
        children: [
          searchField(),
          Column(
            children: [
              
            ],
          )
        ],
      )

    );
  }
}
