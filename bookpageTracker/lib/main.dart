import 'package:bookpageTracker/screens/book_page_tracker.dart';
import 'package:bookpageTracker/states/pages_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PagesState>(
      create: (context) => PagesState(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => BookPageTracker(),
        },
      ),
    );
  }
}
