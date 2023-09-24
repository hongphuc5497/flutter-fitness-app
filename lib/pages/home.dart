import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness/widgets/appBar.dart';
import 'package:fitness/widgets/searchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(children: [
        searchField(),
      ]),
    );
  }
}
