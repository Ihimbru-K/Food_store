import 'package:flutter/material.dart';
import 'package:foodstore/screens/category_meals_screen.dart';
import 'package:foodstore/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodstore',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.pink,
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink).copyWith(secondary: Colors.amber),
       canvasColor: Color.fromRGBO(255,254,229,1),
        fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyMedium: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )),
        useMaterial3: true,
      ),
      home: const Categories(),
        routes: {
      //  '/category-meals' : (ctx) => CategoryMealsScreen(), or
          CategoryMealsScreen.routName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctxt) => MealDetailScreen(),

        },
    );
  }
}



