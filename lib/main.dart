import 'package:car_hub/screens/cars_home.dart';
import 'package:flutter/material.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(224, 20, 20, 20));

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kColorScheme,
        primaryColor: const Color.fromARGB(224, 20, 20, 20),
        tabBarTheme: const TabBarTheme().copyWith(
            dividerColor: Colors.transparent,
            labelColor: const Color.fromARGB(224, 20, 20, 20),
            unselectedLabelColor: Colors.grey[600],
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.circle)),
      ),
      home: const Scaffold(
        body: CarsHome(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
