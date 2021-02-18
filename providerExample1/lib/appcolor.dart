import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class AppColor with ChangeNotifier {
  bool _isLightBlue = false;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.green : Colors.lightBlue;
}
