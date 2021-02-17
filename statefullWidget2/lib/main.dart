import 'package:flutter/material.dart';
import 'package:statefullWidget2/screens/home_screen.dart';
import 'package:statefullWidget2/screens/second_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomeScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}
