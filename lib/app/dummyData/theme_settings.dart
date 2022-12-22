import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  accentColor: Colors.lightBlueAccent,
  scaffoldBackgroundColor: Colors.grey[100],
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  accentColor: Colors.lightBlueAccent,
  scaffoldBackgroundColor: Colors.black87,
);

class ThemeSettings with ChangeNotifier {
  bool _darkTheme = false;
  SharedPreferences? _preferences;

  bool get darkTheme => _darkTheme;

  ThemeSettings() {
    _loadSettingsFormPrefs();
  }

  _initiliazePrefs() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFormPrefs() async {
    await _initiliazePrefs();
    _darkTheme = _preferences?.getBool('darkTheme') ?? false;
    notifyListeners();
  }

  _saveSettignsToPrefs() async {
    await _initiliazePrefs();
    _preferences?.setBool('darkTheme', _darkTheme);
  }
  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveSettignsToPrefs();
    notifyListeners();
  }
}