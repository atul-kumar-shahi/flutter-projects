import 'dart:ui';

class DietModel {
  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.viewIsSelected,
      required this.boxColor
      });

  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;
  Color boxColor;


  static List<DietModel>getDiet(){
    List<DietModel>diets=[];
    diets.add(
      DietModel(
        name: 'Honey Pancake',
          iconPath:'assets/images/cake.svg',
        level: 'Easy',
        duration: '30mins',
        calories: '188kcal',
        viewIsSelected: true,
          boxColor: const Color(0xff92A3fd)
      )
    );
    diets.add(
      DietModel(
        name: 'Honey Pancake',
          iconPath:'assets/images/cake.svg',
        level: 'Easy',
        duration: '30mins',
        calories: '188kcal',
        viewIsSelected: false,
          boxColor: const Color(0xffc58bf2)
      )
    );
    diets.add(
      DietModel(
        name: 'Canai Bread',
          iconPath:'assets/images/cake.svg',
        level: 'Easy',
        duration: '20mins',
        calories: '230kcal',
        viewIsSelected: false,
          boxColor: const Color(0xff92A3fd)
      )
    );
    diets.add(
      DietModel(
        name: 'Honey Pancake',
          iconPath:'assets/images/cake.svg',
        level: 'Easy',
        duration: '30mins',
        calories: '188kcal',
        viewIsSelected: false,
          boxColor: const Color(0xffc58bf2)
      )
    );


    return diets;
  }
}
