

import 'package:flutter/material.dart';
import 'dummy_data.dart';
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
    final CategoryMeal = DUMMY_MEALS.where((element) => false).toList();

    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle!),),

      body: ListView.builder(itemBuilder: (ctx, idx) {}, itemCount: 1)
    );
  }
}
