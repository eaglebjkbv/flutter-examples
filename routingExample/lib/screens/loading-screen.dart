import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int counter = 1;
  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Screen"),
      ),
      body: Column(
        children: [
          Text('sonuc :' + counter.toString()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: RaisedButton(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.addressBook),
                  Text('Sayıyı Arttır'),
                ],
              ),
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
            ),
          ),
          IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.gamepad),
              onPressed: () {
                print("Pressed");
              })
        ],
      ),
    );
  }
}
