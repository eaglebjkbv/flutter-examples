import 'package:flutter/material.dart';
import 'package:multiPageApp/pages/firstPage.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: RaisedButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => FirstScreen()));
          },
          child: Text('1st Screen'),
        ));
  }
}
