import 'dart:ui';

class PopularDietsModel {
  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
    required this.boxColor,
  });

  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;
  Color boxColor;

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(PopularDietsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/images/cake.svg',
        level: 'medium',
        duration: '30mins',
        calorie: '250kcal',
        boxIsSelected: true,
        boxColor: const Color(0xff92A3fd)));
    popularDiets.add(PopularDietsModel(
      name: 'Blueberry Pancake',
      iconPath: 'assets/images/cake.svg',
      level: 'medium',
      duration: '30mins',
      calorie: '250kcal',
      boxIsSelected: false,
      boxColor: const Color(0xffc58bf2),
    ));
    popularDiets.add(PopularDietsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/images/cake.svg',
        level: 'medium',
        duration: '30mins',
        calorie: '250kcal',
        boxIsSelected: false,
        boxColor: const Color(0xff92A3fd)));
    popularDiets.add(PopularDietsModel(
      name: 'Blueberry Pancake',
      iconPath: 'assets/images/cake.svg',
      level: 'medium',
      duration: '30mins',
      calorie: '250kcal',
      boxIsSelected: false,
      boxColor: const Color(0xffc58bf2),
    ));
    return popularDiets;
  }
}
