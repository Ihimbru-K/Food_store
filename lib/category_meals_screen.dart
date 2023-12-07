

import 'package:flutter/material.dart';
class CategoryMealsScreen extends StatelessWidget {
  // final String CategoryId;
  // final String CategoryTitle;
  //
  // CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle),),

      body: Center(child: Text("Category meals screen")),
    );
  }
}
