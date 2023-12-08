import 'package:flutter/material.dart';
import 'package:foodstore/model/meal.dart';

class MealItem extends StatelessWidget {

  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({required this.title, required this.imageUrl, required this.duration, required this.complexity, required this.affordability});

  void SelectMeal(){}


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: SelectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(borderRadius: BorderRadius.only(topLeft:
              Radius.circular(15), topRight: Radius.circular(15)),child: Image.network(imageUrl, height: 250, width: double.infinity, fit:BoxFit.cover ),),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 26, ), softWrap: true,overflow: TextOverflow.fade,)
            ],)
          ],
        ),
      ),


    );
  }
}
