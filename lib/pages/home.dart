import 'package:flutter/material.dart';

import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/models/popular_model.dart';

import 'package:fitness/widgets/app_bar.dart';
import 'package:fitness/widgets/search_field.dart';
import 'package:fitness/widgets/categories_section.dart';
import 'package:fitness/widgets/diets_section.dart';
import 'package:fitness/widgets/popular_diets_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularModel> popularDiets = [];

  @override
  void initState() {
    super.initState();
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SearchField(),
          const SizedBox(height: 40),
          CategoriesSection(categories: categories),
          const SizedBox(height: 40),
          DietsSection(diets: diets),
          const SizedBox(height: 40),
          PopularDietsSection(popularDiets: popularDiets),
        ],
      ),
    );
  }
}
