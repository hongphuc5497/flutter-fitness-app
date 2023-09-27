import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness/models/popular_model.dart';

class PopularDietsSection extends StatelessWidget {
  final List<PopularModel> popularDiets;
  const PopularDietsSection({Key? key, required this.popularDiets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Popular Diets',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 15),
      ListView.separated(
        itemCount: popularDiets.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(width: 25),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: popularDiets[index].viewIsSelected
                  ? [
                      BoxShadow(
                        color: const Color(0xff1D1617).withOpacity(0.07),
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      )
                    ]
                  : [],
              color: popularDiets[index].viewIsSelected
                  ? Colors.white
                  : Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  popularDiets[index].iconPath,
                  height: 65,
                  width: 65,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popularDiets[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calories}",
                      style: const TextStyle(
                        color: Color(0xff7B6F72),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/button.svg',
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            ),
          );
        },
      ),
    ]);
  }
}
