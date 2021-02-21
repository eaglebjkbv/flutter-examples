import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: ChangeNotifierProvider<ValueNotifier<int>>(
          create: (BuildContext context) => ValueNotifier<int>(0),
          child: MyApp())));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<ValueNotifier<int>>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Value Notifier Deneme')),
      body: Center(
        child: Column(
          children: [
            Consumer<ValueNotifier<int>>(
                builder: (_, value, __) => Container(
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Text(
                        'Current Value: ' +
                            Provider.of<ValueNotifier<int>>(context)
                                .value
                                .toString(), // counter.value --> şeklinde de yazılabilir.
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () =>
                        Provider.of<ValueNotifier<int>>(context, listen: false)
                            .value++, // 1. Şekil
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    child: Text('Up'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () => counter.value--, // 2.Şekil
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    child: Text('Down'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
