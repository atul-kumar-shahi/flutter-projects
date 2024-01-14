import 'package:fitness/pages/appBar.dart';
import 'package:fitness/pages/searchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitness/models/diet_model.dart';

import 'models/categories_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiet();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      itemCount: categories.length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color:
                                  categories[index].boxColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(16)),
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
                                  child: SvgPicture.asset(
                                      categories[index].iconPath),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                categories[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Recommendation \n for diet',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 240,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: diets.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: diets[index].boxColor.withOpacity(0.3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              diets[index].iconPath,
                              alignment: Alignment.topRight,
                              height: 100,
                            ),
                            Column(
                              children: [
                                Text(
                                  diets[index].name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(diets[index].level+ '|' +diets[index].duration + '|'+ diets[index].calories),
                              ],
                            ),

                            Container(
                              
                              height: 45,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  colors: [
                                    diets[index].viewIsSelected?Color(0xff9dceff):Colors.transparent,
                                    diets[index].viewIsSelected?Color(0xff92a3fd):Colors.transparent,

                                  ]
                                )
                              ),
                              child: Center(
                                child: Text('view',style: TextStyle(
                                  color: diets[index].viewIsSelected?Colors.white:const Color(0xffc58bf2),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
