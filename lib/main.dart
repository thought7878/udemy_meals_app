import 'package:flutter/material.dart';
import 'package:udemy_meals_app/screens/tabs_screen.dart';

import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',

      theme: ThemeData(
        primarySwatch: Colors.pink,
        // primaryColor: Colors.green,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings){
      //   return MaterialPageRoute(builder: (context){
      //     return CategoryScreen();
      //   });
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return CategoryScreen();
        });
      },
    );
  }
}
