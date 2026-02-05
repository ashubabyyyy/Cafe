import 'package:flutter/material.dart';

class CoffeeModel {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String description;
  final String rating;
  final Color? readMoreColor;

  CoffeeModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.description,
    required this.rating,
    this.readMoreColor,
  });
}
