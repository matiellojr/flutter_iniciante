import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {

  final SharedPreferences sharedPreferences;

  bool darkTheme = false;

  ThemeController({
    required this.sharedPreferences,
  });
  
  void toggleTheme(bool value) async {
    darkTheme = !darkTheme;
    await sharedPreferences.setBool("theme", darkTheme);
    notifyListeners(); // para não notificar a pessoa
  }

  // metodo para salvar quando reiniciar o aplicativo,
  // por exemplo, quando mudar para tema escuro ou claro.
  Future<void> getTheme() async {
    final theme = sharedPreferences.getBool("theme");

    if (theme != null) {
      darkTheme = theme;
      notifyListeners();
    }
  }
  
}