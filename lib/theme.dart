import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Define themes
  static final ThemeData themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue.shade50,
    shadowColor: Colors.blue.shade700,
  );

  static final ThemeData themeB = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade50,
    shadowColor: Colors.green.shade700,
  );

  static final ThemeData themeC = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.orange.shade50,
    shadowColor: Colors.orange.shade700,
  );

  static final ThemeData themeD = ThemeData(
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.black,
    shadowColor: Colors.black,
  );

  ThemeData _currentTheme = themeA;
  ThemeData get currentTheme => _currentTheme;

  void switchTheme(String themeName) {
    if (themeName == 'ThemeA') {
      _currentTheme = themeA;
    } else if (themeName == 'ThemeB') {
      _currentTheme = themeB;
    } else if (themeName == 'ThemeC') {
      _currentTheme = themeC;
    } else if (themeName == 'ThemeD') {
      _currentTheme = themeD;
    }
    notifyListeners();
  }

  // Fonts
  String _currentFont = 'Roboto';
  String get currentFont => _currentFont;

  void switchFont(String fontName) {
    _currentFont = fontName;
    notifyListeners();
  }

  // Generate updated text theme dynamically
  TextTheme get textTheme {
    return TextTheme(
      bodyLarge: TextStyle(
          fontFamily: _currentFont, fontSize: 16, color: Colors.black),
      bodyMedium: TextStyle(
          fontFamily: _currentFont, fontSize: 14, color: Colors.black),
      titleLarge: TextStyle(
          fontFamily: _currentFont, fontSize: 20, color: Colors.black),
    );
  }
}
