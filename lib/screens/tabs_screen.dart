import 'package:flutter/material.dart';

import './favorites_screen.dart';
import './category_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //
  int selectedIndex = 0;
  List<Map<String, Object>> screens = [
    {'title': 'Categories', 'screen': CategoryScreen()},
    {'title': 'Favorites', 'screen': FavoritesScreen()},
  ];

  //
  void selectItem(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[selectedIndex]['title']),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: screens[selectedIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectItem,
        currentIndex: selectedIndex,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        // type: BottomNavigationBarType.shifting,
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            title: const Text('Categories'),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            title: const Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
