import 'package:flutter/foundation.dart';


enum Complexity{
  Simple, Challenging, Hard
}
enum Affordability{
  Affordable, Pricey, Luxurious
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({required this.id, required this.title, required this.imageUrl, required this.complexity, required this.categories, required this.ingredients, required this.steps, required this.affordability, required this.duration, required this.isVegan, required this.isVegetarian, required this.isGlutenFree, required this.isLactoseFree,});

}