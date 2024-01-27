import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mentors extends StatelessWidget {
  const Mentors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,

       leading: Padding(
         padding: const EdgeInsets.all(15.0),
         child: GestureDetector(
           onTap: (){
             Navigator.pop(context);
           },
           child: SvgPicture.asset('assets/images/back.svg',height: 2,width: 2,),
         ),
       ),
      ),
      body: Center(
        child: Text('Mentorscreen'),
      ),
    );
  }
}
