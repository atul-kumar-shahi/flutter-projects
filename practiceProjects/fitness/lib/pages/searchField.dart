import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container searchField(){
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: const Color(0xff1d1617).withOpacity(0.11),
        blurRadius: 40,
        spreadRadius: 0,

      )

    ]),
    padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Search Pancake',
              hintStyle:const  TextStyle(
                  color: Color(0xffdddada),
                  fontSize: 14
              ),
              prefixIcon:const  Icon(Icons.search,color: Colors.grey,),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        width: 2,
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.1,

                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset('assets/images/filter.svg',),
                      ),
                    ],
                  ),
                ),
              ),
              contentPadding:const  EdgeInsets.all(10),
              fillColor: Colors.white,

              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:  BorderSide.none,

              )
          ),

        )
      ],
    ),
  );
}
