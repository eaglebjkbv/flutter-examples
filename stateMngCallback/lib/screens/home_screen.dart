import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Takizawa';

  void callback(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:
                  Container(color: Colors.amberAccent, child: SolKolon(name))),
          Expanded(
              child: Container(
                  color: Colors.redAccent,
                  child: SagKolon(
                    callback: callback,
                  )))
        ],
      )),
    );
  }
}

class SolKolon extends StatelessWidget {
  final String name;
  SolKolon(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text('Sol Kolon'), Text('İsim :$name')],
      ),
    );
  }
}

class SagKolon extends StatelessWidget {
  final Function callback;
  final String name;
  const SagKolon({this.name, this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(child: SagKolonA(name: name, callback: callback));
  }
}

class SagKolonA extends StatelessWidget {
  final Function callback;
  final String name;
  const SagKolonA({this.name, this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Sağ Kolon A'),
          SagKolonB(name: name, callback: callback),
        ],
      ),
    );
  }
}

class SagKolonB extends StatelessWidget {
  final Function callback;
  final String name;
  const SagKolonB({this.name, this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sağ Kolon B'),
          SagKolonC(name: name, callback: callback)
        ],
      ),
    );
  }
}

class SagKolonC extends StatelessWidget {
  final Function callback;
  final String name;
  const SagKolonC({this.name, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.blueAccent,
        child: Column(
          children: [
            Text('Sağ Kolon C'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                ),
                hintText: 'Giriş yapınız',
                helperText: 'Basit birşeyler',
              ),
              onChanged: (value) {
                callback(value);
              },
            )
          ],
        ));
  }
}
