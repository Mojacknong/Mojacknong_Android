import 'package:flutter/material.dart';

class ToggleNotifier extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleChecked() {
    _isChecked = !_isChecked;
    notifyListeners();
  }
}
