import 'package:dns_intro/pages/sidebar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white24,
        elevation: 0,
      ),
      drawer: SideBar(),
     endDrawerEnableOpenDragGesture: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('HomeScreen'),

        ],
      ),
    );
  }
}
