import 'package:calculator/convertor.dart';
import 'package:flutter/material.dart ';
import 'package:calculator/widgets/custom_floatingButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,

        actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Convertor()));
                    }, icon:Icon(Icons.grid_view_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                  )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              InputTextfield(),
              SizedBox(
                height: 60,
              ),
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
          ),
        ),
      ),
    );
  }
}

class InputTextfield extends StatelessWidget {
  const InputTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 150.0, right: 20),
      child: TextField(
        cursorHeight: 50,
        cursorColor: Colors.red,
        showCursor: true,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            overflow: TextOverflow.visible,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            fillColor: Colors.red,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: InputBorder.none),
        keyboardType: TextInputType.none,
      ),
    );
  }
}
