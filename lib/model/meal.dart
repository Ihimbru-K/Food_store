
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

}