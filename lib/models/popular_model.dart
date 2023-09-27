import 'dart:ffi';

import 'package:flutter/material.dart';

class PopularModel {
  String name;
  String iconPath;
  Color boxColor;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;

  PopularModel(
      {required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.level,
      required this.duration,
      required this.calories,
      required this.viewIsSelected});

  static List<PopularModel> getPopularDiets() {
    List<PopularModel> popularDiets = [];

    popularDiets.addAll([
      PopularModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: const Color(0xff92A3FD),
        level: 'Mediium',
        duration: '30mins',
        calories: '230kcal',
        viewIsSelected: true,
      ),
      PopularModel(
        name: 'Salmon Nigiri',
        iconPath: 'assets/icons/salmon-nigiri.svg',
        boxColor: const Color(0xffC58BF2),
        level: 'Easy',
        duration: '20mins',
        calories: '120kcal',
        viewIsSelected: false,
      ),
    ]);
    return popularDiets;
  }
}
