import 'package:flutter/material.dart';
import 'package:statefullWidget2/screens/widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            child: Icon(Icons.devices_other),
            onPressed: () => Navigator.pushNamed(context, '/second'),
          )
        ],
        title: Text('Ana Ekran'),
      ),
      body: Center(child: CounterScreen()),
    );
  }
}
