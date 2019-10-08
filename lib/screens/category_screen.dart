import 'package:flutter/material.dart';

import 'package:udemy_meals_app/dummy_data.dart';
import './category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoryScreen'),
        elevation: 0.0,
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((ctg) {
          return CategoryItem(ctg.title, ctg.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}