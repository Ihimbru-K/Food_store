import 'package:flutter/material.dart';
import 'package:foodstore/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title, this.color);

  void SelectCategory(BuildContext ctx){
   // Navigator.of(ctx).push(MaterialPageRoute(builder: (_){return CategoryMealsScreen(id, title);},),);
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routName, arguments: {'id' : id, 'title' : title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
      ),
    child: Text(title,style: Theme.of(context).textTheme.titleMedium,),
    ),);
  }
}
