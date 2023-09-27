import 'dart:ffi';

import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  Color boxColor;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.level,
      required this.duration,
      required this.calories,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.addAll([
      DietModel(
        name: 'Salad',
        iconPath: 'assets/icons/honey-pancakes.svg',
        boxColor: const Color(0xff92A3FD),
        level: 'Easy',
        duration: '30mins',
        calories: '180kcal',
        viewIsSelected: false,
      ),
      DietModel(
        name: 'Cake',
        iconPath: 'assets/icons/canai-bread.svg',
        boxColor: const Color(0xffC58BF2),
        level: 'Medium',
        duration: '20mins',
        calories: '240kcal',
        viewIsSelected: true,
      ),
    ]);
    return diets;
  }
}
