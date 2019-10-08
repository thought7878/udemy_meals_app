import 'package:flutter/material.dart';
import 'package:udemy_meals_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void tapItem(BuildContext ct) {
    Navigator.of(ct)
        .pushNamed('/category_meals', arguments: {'id': id, 'title': title});
    // Navigator.of(ct).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(id, title);
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => tapItem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
