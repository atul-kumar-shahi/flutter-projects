import 'package:fitness/pages/appBar.dart';
import 'package:fitness/pages/searchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'models/categories_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchField(),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 120,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                      scrollDirection: Axis.horizontal,
                      padding:const EdgeInsets.only(left: 20,right: 20),
                      itemCount: categories.length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: categories[index].boxColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(categories[index].iconPath),
                                ),
                              ),
                              const SizedBox(height: 13,),
                              Text(categories[index].name,style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                              ),)
                            ],
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ));
  }
}
