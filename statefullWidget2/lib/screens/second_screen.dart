import 'package:flutter/material.dart';
import 'package:statefullWidget2/screens/widgets/counter_widget.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İkinci Ekran'),
      ),
      body: Center(child: CounterScreen()),
    );
  }
}
