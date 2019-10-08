import 'package:flutter/material.dart';

import 'package:udemy_meals_app/screans/category_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      home: CategoryScreen(),
    );
  }
}
