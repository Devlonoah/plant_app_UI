import 'package:flutter/material.dart';
import 'package:plant/screens/home/components/plant_card.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              3,
              (index) =>
                  PlantCard(size: size, imageIndex: (index + 1).toString()))),
    );
  }
}
