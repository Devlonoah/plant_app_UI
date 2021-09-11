import 'package:flutter/material.dart';
import 'package:plant/screens/home/components/plant_card.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              3, (index) => PlantCard(imageIndex: (index + 1).toString()))),
    );
  }
}
