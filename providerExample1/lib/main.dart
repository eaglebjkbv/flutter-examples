import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerExample1/appcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => AppColor(),
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white70,
              title: Consumer<AppColor>(
                  builder: (context, appcolor, _) => (Text('Provider Deneme',
                      style: TextStyle(color: appcolor.color))))),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<AppColor>(
                    builder: (context, appcolor, _) => AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 500),
                          height: 100,
                          width: 100,
                          color: appcolor.color,
                          child: Center(child: Text('Animated Conatiner')),
                        )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Mavi'),
                    Consumer<AppColor>(
                        builder: (context, appcolor, _) => Switch(
                              onChanged: (val) {
                                appcolor.isLightBlue = val;
                              },
                              value: appcolor.isLightBlue,
                            )),
                    Text('Yeşil')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
