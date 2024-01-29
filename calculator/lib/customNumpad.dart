import 'package:flutter/material.dart';
import 'package:calculator/widgets/custom_floatingButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumPad extends StatelessWidget {
  const NumPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.c,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: Icons.percent,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: Icons.backspace,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.divide,color:Colors.grey.shade800,),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.seven,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.eight,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.nine,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.xmark,color:Colors.grey.shade800,),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.four,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.five,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.six,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.minus,color:Colors.grey.shade800,),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.one,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.two,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.three,color:Colors.grey.shade800,),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.plus,color:Colors.grey.shade800,),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            SizedBox(height: 65,width: 65,child: FloatingActionButton(onPressed: (){},child: Text('00',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Colors.white70),),backgroundColor: Colors.grey.shade800,)),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.zero,color:Colors.grey.shade800,),
            SizedBox(height: 65,width: 65,child: FloatingActionButton(onPressed: (){},child: Text('.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white70),),backgroundColor: Colors.grey.shade800,)),
            CustomFloatingButton(onPressed: (){}, icon: FontAwesomeIcons.equals,color:Colors.orange.shade900,),

          ],
        ),
      ],
    );
  }
}
