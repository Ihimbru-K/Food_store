import 'package:flutter/material.dart';




class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(body:  Center(child: Text('Meal name is ${mealId}'),),);
  }
}
