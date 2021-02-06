import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text('Ana Sayfadan Merhaba'),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/list');
            },
            child: Row(
              children: [
                Icon(Icons.list_alt),
                Text("List Ekranına Git"),
              ],
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Row(
                children: [
                  Icon(Icons.local_activity),
                  Text('Loading Ekranına git')
                ],
              ))
        ],
      ),
    ));
  }
}
