import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tfNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Adınız'),
            controller: _tfNameController,
            onSubmitted: (String value) {
              print("Deneme");
            },
          ),
          RaisedButton(
            child: Text("Mesaj Ver"),
            color: Colors.amber,
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Merhaba " + _tfNameController.text),
                      content: Text('Bu bir Alert Dialog Uygulaması oldu...'),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Text('Kapat'),
                        )
                      ],
                    );
                  });
              _tfNameController.clear();
            },
          )
        ],
      ),
    )));
  }
}
