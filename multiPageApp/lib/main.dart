import 'package:flutter/material.dart';
import 'package:multiPageApp/pages/firstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new FirstScreen());
  }
}
