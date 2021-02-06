import 'package:flutter/material.dart';
import 'package:multiPageApp/pages/secondPage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.amber),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Text('İkinci Ekrana Geç',
                style: (TextStyle(fontSize: 20.0, color: Colors.green))),
          ),
        ));
  }
}
