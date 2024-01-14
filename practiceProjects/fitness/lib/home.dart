import 'package:fitness/models/popular_model.dart';
import 'package:fitness/pages/appBar.dart';
import 'package:fitness/pages/searchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/models/popular_model.dart';

import 'models/categories_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popular = [];

  void _getInitialValues() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiet();
    popular = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialValues();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: ListView(
        children: [
          searchField(),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
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
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 15,
                        ),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    itemCount: categories.length,
                    itemBuilder: (ctx, index) {
                      return Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: categories[index].boxColor.withOpacity(0.3),
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                              Text(diets[index].level +
                                  '|' +
                                  diets[index].duration +
                                  '|' +
                                  diets[index].calories),
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(colors: [
                                  diets[index].viewIsSelected
                                      ? Color(0xff9dceff)
                                      : Colors.transparent,
                                  diets[index].viewIsSelected
                                      ? Color(0xff92a3fd)
                                      : Colors.transparent,
                                ])),
                            child: Center(
                              child: Text(
                                'view',
                                style: TextStyle(
                                  color: diets[index].viewIsSelected
                                      ? Colors.white
                                      : const Color(0xffc58bf2),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
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
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                itemCount: popular.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1d1617).withOpacity(0.07),
                            offset: Offset(0, 10),
                            blurRadius: 40,
                            spreadRadius: 0,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          popular[index].iconPath,
                          height: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popular[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              popular[index].level +
                                  '|' +
                                  popular[index].duration +
                                  '|' +
                                  popular[index].calorie,
                              style: TextStyle(
                                color: Color(0xff7b6f72),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.arrow_back_ios_rounded),
                      ],
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
