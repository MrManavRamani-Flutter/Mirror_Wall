import 'package:flutter/material.dart';

class ThemeChangeAppProvider extends ChangeNotifier {
  bool isLite = true;
  void themeCheck() {
    isLite = !isLite;
    notifyListeners();
  }
}
