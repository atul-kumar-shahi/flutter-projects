class PopularDietsModel {
  PopularDietsModel({required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected});

  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel>popularDiets = [];

    popularDiets.add(
        PopularDietsModel(name: 'Blueberry Pancake',
            iconPath: 'assets/images/cake.svg',
            level: 'medium',
            duration: '30mins',
            calorie: '250kcal',
            boxIsSelected: true)
    );
    popularDiets.add(
        PopularDietsModel(name: 'Blueberry Pancake',
            iconPath: 'assets/images/cake.svg',
            level: 'medium',
            duration: '30mins',
            calorie: '250kcal',
            boxIsSelected: false)
    );
    popularDiets.add(
        PopularDietsModel(name: 'Blueberry Pancake',
            iconPath: 'assets/images/cake.svg',
            level: 'medium',
            duration: '30mins',
            calorie: '250kcal',
            boxIsSelected: false)
    );
    popularDiets.add(
        PopularDietsModel(name: 'Blueberry Pancake',
            iconPath: 'assets/images/cake.svg',
            level: 'medium',
            duration: '30mins',
            calorie: '250kcal',
            boxIsSelected: false)
    );
    return popularDiets;
  }
}
