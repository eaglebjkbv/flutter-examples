import 'package:flutter/material.dart';
import 'package:routingExample/screens/home-screen.dart';
import 'package:routingExample/screens/list-screen.dart';
import 'package:routingExample/screens/loading-screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => HomeScreen(),
      '/list': (context) => ListSecreen(),
    },
  ));
}
