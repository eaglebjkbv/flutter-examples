import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerExample2/appcolor.dart';

void main() {
  runApp(ChangeNotifierProvider<AppColor>(
      create: (BuildContext context) => AppColor(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Provider.of<AppColor>(context).changeColor,
        appBar: AppBar(
          title: Text('Merhaba Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tema Değiştir',
                  style: TextStyle(
                    color: !Provider.of<AppColor>(context).isLight
                        ? Colors.white
                        : Colors.black,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dark'),
                  Switch(
                    value: Provider.of<AppColor>(context).isLight,
                    onChanged: (value) {
                      Provider.of<AppColor>(context, listen: false).isLight =
                          value;
                    },
                  ),
                  Text('Light')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
