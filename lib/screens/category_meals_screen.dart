

import 'package:flutter/material.dart';
//import 'package:foodstore/widgets/meal_item.dart';
//import 'package:foodstore/widgets/meal_item.dart';
import 'package:foodstore/widgets/meal_item.dart';
import 'package:foodstore/model/meal.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routName = '/category-meals';
  // final String CategoryId;
  // final String CategoryTitle;
  //
  // CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final CategoryId = routeArgs['id'];
    final CategoryTitle = routeArgs['title'];
    final CategoryMeals = DUMMY_MEALS.where((meal) {return meal.categories.contains(CategoryId); }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle!),),

      body: ListView.builder(itemBuilder: (ctx, idx) {
        return MealItem(id : CategoryMeals[idx].id, title: CategoryMeals[idx].title, imageUrl: CategoryMeals[idx].title, duration: CategoryMeals[idx].duration,
          complexity: CategoryMeals[idx].complexity, affordability: CategoryMeals[idx].affordability,
         // affordability: CategoryMeals[idx].affordability,
        );}, itemCount: CategoryMeals.length)
    );
  }
}
