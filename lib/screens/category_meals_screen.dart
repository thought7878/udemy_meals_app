import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category_meals';

  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final ags =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    String title = ags['title'];
    String id = ags['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      body: Center(
        child: Text('CategoryMealsScreen'),
      ),
    );
  }
}
