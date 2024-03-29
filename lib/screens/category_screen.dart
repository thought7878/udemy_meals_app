import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(24),
      children: DUMMY_CATEGORIES.map((ctg) {
        return CategoryItem(ctg.id, ctg.title, ctg.color);
      }).toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
    /*Scaffold(
      appBar: AppBar(
        title: const Text('CategoryScreen'),
        elevation: 0.0,
      ),
      body: GridView(
        padding: EdgeInsets.all(24),
        children: DUMMY_CATEGORIES.map((ctg) {
          return CategoryItem(ctg.id, ctg.title, ctg.color);
        }).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );*/
  }
}
