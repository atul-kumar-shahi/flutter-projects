import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomeScreen'),
            ElevatedButton(onPressed:(){
              FirebaseAuth.instance.signOut();
            } , child: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
