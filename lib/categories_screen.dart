import 'package:flutter/material.dart';
import 'package:foodstore/category_item.dart';
import 'dummy_data.dart';


class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kbfoods"),),
      body: GridView(children:

      DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.title, catData.color)).toList(),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          mainAxisExtent: 20,
          crossAxisSpacing: 20,
        ),),
    );
  }
}
