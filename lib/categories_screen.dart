import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(children: <Widget>[], gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3/2,
      mainAxisExtent: 20,
      crossAxisSpacing: 20,
    ),);
  }
}
