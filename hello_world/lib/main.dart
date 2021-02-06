import 'package:flutter/material.dart';

void main() => runApp((MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Nasılsın Dünya'),
        shadowColor: Colors.blue,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Bu ilk Flutter',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    ))));

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Hoşgeldin',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Fluttere Hoşgeldiniz'),
//         ),
//         body: Center(child: Text('Merhaba Dünya')),
//       ),
//     );
//   }
// }
