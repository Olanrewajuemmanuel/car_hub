import 'package:car_hub/models/car_details.dart';
import 'package:car_hub/screens/car_full_details.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.carDetails});

  final CarDetails carDetails;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => CarFullDetails(
                  details: carDetails,
                )));
      },
      child: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.hardEdge,
                child: Hero(
                  tag: carDetails.model,
                  child: Image.asset(
                    'assets/images/${carDetails.image}',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Text(
              carDetails.model,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.grey[500]),
            ),
            const SizedBox(
              height: 6,
            ),
            Text('\$${carDetails.price.toInt()}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
