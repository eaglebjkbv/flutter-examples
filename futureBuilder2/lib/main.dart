import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<String> _getGreeting() async {
    String result =
        await Future.delayed(Duration(seconds: 5), () => "Merhaba Dünya");
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Builder kullanımı')),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                  child: Text('Futureden Gelen Mesaj')),
              FutureBuilder(
                future: _getGreeting(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator(
                      backgroundColor: Colors.red,
                      strokeWidth: 10.0,
                    );
                  } else {
                    return Text(snapshot.data);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
