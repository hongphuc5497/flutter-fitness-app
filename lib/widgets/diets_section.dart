import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness/models/diet_model.dart';

class DietsSection extends StatelessWidget {
  final List<DietModel> diets;
  const DietsSection({Key? key, required this.diets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Recommendation\nfor Diet',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 15),
      SizedBox(
        height: 240,
        child: ListView.separated(
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
                  SvgPicture.asset(diets[index].iconPath),
                  Text(
                    diets[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "${diets[index].level} | ${diets[index].duration} | ${diets[index].calories}",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        diets[index].viewIsSelected
                            ? const Color(0xff9DCEFF)
                            : Colors.transparent,
                        diets[index].viewIsSelected
                            ? const Color(0xff92A3FD)
                            : Colors.transparent,
                      ]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'View',
                        style: TextStyle(
                          color: diets[index].viewIsSelected
                              ? Colors.white
                              : Colors.transparent,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 25),
          itemCount: diets.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
        ),
      )
    ]);
  }
}
