import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void changeThemeMode(ThemeMode newThemeMode){
    _themeMode = newThemeMode;
    notifyListeners();
  }

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
        backgroundColor: Colors.grey[100],
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Montserrat',
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
        backgroundColor: Colors.grey[900],
      );

  static ThemeProvider of(BuildContext context, {bool listen = true}) => Provider.of<ThemeProvider>(context, listen: listen);
}
