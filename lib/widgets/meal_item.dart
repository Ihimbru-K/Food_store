import 'package:flutter/material.dart';
import 'package:foodstore/model/meal.dart';
import 'package:foodstore/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {required this.id,
        required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  String get complexityText{

    switch(complexity){
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;

      default:
        return "Unknown";
    }
  }
  String get AffordabilityText{
    switch(affordability){
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
       return 'Unknown';
    }
  }

  void SelectMeal(BuildContext context) {

    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                )),
              ],
            ),
            Padding(padding: EdgeInsets.all(20), child: Row(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                Icon(Icons.schedule, ),SizedBox(width: 6,),Text("{$duration} min"),
              ],),Row(children: [
                Icon(Icons.engineering, ),SizedBox(width: 6,),Text(complexityText),
              ],),
              Row(children: [
                Icon(Icons.money, ),SizedBox(width: 6,),Text(AffordabilityText),
              ],)
            ],),)
          ],
        ),
      ),
    );
  }
}
