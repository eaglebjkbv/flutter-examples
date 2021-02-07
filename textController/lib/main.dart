import 'package:flutter/material.dart';
import 'package:textController/screens/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomeScreen(),
    },
  ));
}
