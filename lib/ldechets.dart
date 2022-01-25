import 'package:flutter/material.dart';

class ldechets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('waste list')),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
              title: Text('plastic'),
              leading: Icon(Icons.liquor),
              onTap: () {
                Navigator.pushNamed(context, '/listp');
              }),
          ListTile(
              title: Text('Glass'),
              leading: Icon(Icons.wine_bar),
              onTap: () {
                Navigator.pushNamed(context, '/adechets');
              }),
          ListTile(
              title: Text('Paper'),
              leading: Icon(Icons.article),
              onTap: () {
                Navigator.pushNamed(context, '/inscription');
              }),
          ListTile(
              title: Text('bread'),
              leading: Icon(Icons.breakfast_dining),
              onTap: () {
                Navigator.pushNamed(context, '/inscription');
              }),
          ListTile(
              title: Text('Tissu'),
              leading: Icon(Icons.article),
              onTap: () {
                Navigator.pushNamed(context, '/inscription');
              }),
        ],
      ),
    );
  }
}
