import 'package:car_hub/data/cars_data.dart';
import 'package:car_hub/models/car_details.dart';
import 'package:car_hub/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarDisplay extends StatelessWidget {
  const CarDisplay({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    List<CarDetails> data = [];
    switch (currentIndex) {
      case 0:
        // Tesla view
        data = tesla;
        break;
      case 1:
        // BMW view
        data = bmw;
        break;
      case 2:
        // Lexus view
        data = lexus;
        break;
      default:
        data = [];
    }

    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: GridView(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 25),
        children: [
          for (final car in data) CarCard(carDetails: car),
        ],
      ),
    );
  }
}
