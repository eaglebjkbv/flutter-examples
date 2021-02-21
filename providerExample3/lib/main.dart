import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'city.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Provider<City>(
      create: (BuildContext context) {
        return City();
      },
      child: Scaffold(
        appBar: AppBar(title: Text('deneme')),
        body: Builder(
          builder: (BuildContext context) {
            return Text(Provider.of<City>(context).city);
          },
        ),
      ),
    ));
  }
}
