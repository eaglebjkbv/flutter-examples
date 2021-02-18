import 'package:flutter/material.dart';

class AppColor with ChangeNotifier {
  bool _isLight = true;
  bool get isLight => _isLight;
  set isLight(bool value) {
    _isLight = value;
    notifyListeners();
  }

  Color get changeColor {
    if (_isLight) {
      return Colors.grey[100];
    } else {
      return Colors.grey[600];
    }
  }
}
