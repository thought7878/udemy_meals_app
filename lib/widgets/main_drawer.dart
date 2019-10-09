import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  //
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).accentColor,
          child: Text(
            'Cooking Up!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(height: 20),
        buildListTile('Meals', Icons.restaurant),
        buildListTile('Filters', Icons.settings),
      ],
    );
  }
}
