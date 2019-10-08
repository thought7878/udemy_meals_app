import 'package:flutter/material.dart';
import 'package:udemy_meals_app/dummy_data.dart';
import 'package:udemy_meals_app/models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category_meals';

  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    //
    final ags =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    String title = ags['title'];
    String id = ags['id'];
    //
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    //
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
