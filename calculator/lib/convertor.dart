import 'package:calculator/unit_convertor_pages/Length.dart';
import 'package:calculator/unit_convertor_pages/area.dart';
import 'package:calculator/unit_convertor_pages/data.dart';
import 'package:calculator/unit_convertor_pages/speed.dart';
import 'package:calculator/unit_convertor_pages/temperature.dart';
import 'package:calculator/unit_convertor_pages/time.dart';
import 'package:calculator/unit_convertor_pages/tip.dart';
import 'package:calculator/unit_convertor_pages/volume.dart';
import 'package:calculator/unit_convertor_pages/weight.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Convertor extends StatefulWidget {
  const Convertor({super.key});

  @override
  State<Convertor> createState() => _ConvertorState();
}

class _ConvertorState extends State<Convertor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Convertor'),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },),

      ),
      body: GridView(
        padding: EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:3,
        childAspectRatio: 2/3,
        crossAxisSpacing:20,
        mainAxisSpacing: 20

      ),
        children: const [
             ConvertorWidget(text: 'Length',icon: FontAwesomeIcons.ruler,widget:Length(),),
             ConvertorWidget(text: 'Area',icon: FontAwesomeIcons.square,widget: Area(),),
             ConvertorWidget(text: 'Data',icon: FontAwesomeIcons.memory,widget: Data(),),
             ConvertorWidget(text: 'Volume',icon: FontAwesomeIcons.cube,widget: Volume(),),
             ConvertorWidget(text: 'Temperature',icon: FontAwesomeIcons.temperatureQuarter,widget: Temperature(),),
             ConvertorWidget(text: 'Tip',icon: FontAwesomeIcons.wallet,widget: Tip(),),
             ConvertorWidget(text: 'Time',icon: FontAwesomeIcons.clock,widget: Time(),),
             ConvertorWidget(text: 'Weight',icon: FontAwesomeIcons.weightScale,widget: Weight(),),
             ConvertorWidget(text: 'Speed',icon: FontAwesomeIcons.gauge,widget: Speed(),),

        ],
      ),
    );
  }
}

class ConvertorWidget extends StatelessWidget {
  const ConvertorWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.widget,
  });

  final String text;
  final IconData icon;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>widget));
      },
      child: Container(
        child: Column(
          children: [
            Icon(icon,color: Colors.blue,),
            const SizedBox(height: 20,),
            Text(text,style: TextStyle(color: Colors.white,fontSize: 15),),

          ],
        ),
      )
    );
  }
}
