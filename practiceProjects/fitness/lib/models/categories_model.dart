import 'package:flutter/material.dart';

class CategoryModel {
  CategoryModel(
      {required this.name, required this.boxColor, required this.iconPath});

  String iconPath;
  Color boxColor;
  String name;

  static  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad', boxColor: const Color(0xff92A3fd), iconPath: 'assets/images/salad.svg'));
    categories.add(CategoryModel(
        name: 'Cake', boxColor: const Color(0xffc58bf2), iconPath:'assets/images/cake.svg'));
    categories.add(CategoryModel(
        name: 'Pie', boxColor: const Color(0xff92A3fd), iconPath:'assets/images/pie.svg'));
    categories.add(CategoryModel(
        name: 'Smoothies', boxColor: const Color(0xffc58bf2), iconPath: 'assets/images/smoothie.svg'));
    categories.add(CategoryModel(
        name: 'Cheese', boxColor: const  Color(0xff92A3fd), iconPath:'assets/images/cheese.svg'));
    return categories;
  }
}
