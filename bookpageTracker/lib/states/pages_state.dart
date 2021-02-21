import 'package:bookpageTracker/models/pages.dart';
import 'package:flutter/material.dart';

class PagesState with ChangeNotifier {
  List<Pages> _pages = [
    Pages(DateTime(2021, 01, 16), 1),
    Pages(DateTime(2021, 01, 16), 1),
    Pages(DateTime(2021, 01, 16), 1),
    Pages(DateTime(2021, 01, 16), 1),
  ];
  List<Pages> get pages => _pages;
  int totalPages() {
    int sum = 0;
    for (var page in _pages) {
      sum += page.numberOfPages;
    }

    return sum;
  }

  void addPage(Pages pages) {
    _pages.insert(0, pages);
    notifyListeners();
  }
}
