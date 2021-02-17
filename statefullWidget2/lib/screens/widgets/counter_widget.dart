import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Sayac Degeri :' + counter.toString()),
        FlatButton(
            color: Colors.red,
            onPressed: (() {
              setState(() {
                counter++;
              });
            }),
            child: Text('Sayacı Arttır')),
      ],
    );
  }
}
