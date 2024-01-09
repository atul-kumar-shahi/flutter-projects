import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar(){
  return AppBar(
    title: Text('Breakfast',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Container(

      decoration: BoxDecoration(
          color: Color(0xfff7f8f8),
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: SvgPicture.asset('assets/images/backbutton.svg',height: 20,width: 20,),

    ),
    actions: [
      Container(
        width: 37,
        decoration: BoxDecoration(
            color: Color(0xfff7f8f8),
            borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/images/tripledot.svg',height: 20,width: 20,),

      ),
    ],
  );
}