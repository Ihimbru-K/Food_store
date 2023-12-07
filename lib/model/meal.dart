import 'package:flutter/foundation.dart';


enum Complexity{
  Easy, challenging, Difficult
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
  final bool lovesPalmOil;
  final bool lovesTraditional;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({required this.id, required this.title, required this.imageUrl, required this.categories, required this.ingredients, required this.steps, required this.affordability, required this.duration, required this.isVegan, required this.isVegetarian, required this.lovesPalmOil, required this.lovesTraditional});

}