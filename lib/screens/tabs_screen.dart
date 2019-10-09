import 'package:flutter/material.dart';

import './favorites_screen.dart';
import './category_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabsScreen'),
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoryScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
