import 'package:car_hub/widgets/car_display.dart';
import 'package:flutter/material.dart';

class CarsHome extends StatelessWidget {
  const CarsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Tesla'),
              ),
              Tab(
                child: Text('BMW'),
              ),
              Tab(
                child: Text('Lexus'),
              ),
            ],
          ),
          title: const Text('Cars Hub'),
        ),
        body: const TabBarView(
          children: [
            CarDisplay(currentIndex: 0),
            CarDisplay(currentIndex: 1),
            CarDisplay(currentIndex: 2),
          ],
        ),
      ),
    );
  }
}
