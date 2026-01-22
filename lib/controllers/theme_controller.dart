import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool darkTheme = false;
  void toggleTheme(bool value) {
    darkTheme = !darkTheme;
    notifyListeners(); // para não notificar a pessoa
  }
  
}