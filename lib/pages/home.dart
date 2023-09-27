import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';

import 'package:fitness/widgets/app_bar.dart';
import 'package:fitness/widgets/search_field.dart';
import 'package:fitness/widgets/categories_section.dart';
import 'package:fitness/widgets/diets_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
    _getDiets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchField(),
          const SizedBox(height: 40),
          CategoriesSection(categories: categories),
          const SizedBox(height: 40),
          DietsSection(diets: diets),
        ],
      ),
    );
  }
}
