import 'package:flutter/material.dart';

abstract class CarDetails {
  final String image;
  final String description;
  final String model;
  final double price;
  final Color? categoryColor;

  const CarDetails(
      {this.categoryColor,
      required this.image,
      required this.model,
      required this.description,
      required this.price});
}

class Tesla extends CarDetails {
  final Color categoryColor;

  Tesla(
      {this.categoryColor = const Color.fromARGB(255, 212, 102, 255),
      required super.image,
      required super.description,
      required super.price,
      required super.model});
}

class BMW extends CarDetails {
  final Color categoryColor;
  BMW(
      {this.categoryColor = const Color.fromARGB(255, 32, 32, 32),
      required super.image,
      required super.description,
      required super.price,
      required super.model});
}

class Lexus extends CarDetails {
  final Color categoryColor;
  Lexus(
      {this.categoryColor = const Color.fromARGB(255, 94, 190, 255),
      required super.image,
      required super.description,
      required super.price,
      required super.model});
}
