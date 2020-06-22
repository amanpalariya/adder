import 'package:adder_game/presentation/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  ThemeMode themeMode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      home: QuizWidget(themeChangeFunction: changeThemeMode),
    );
  }

  void changeThemeMode(ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }

  ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Montserrat',
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
      backgroundColor: Colors.grey[100],
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Montserrat',
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
      backgroundColor: Colors.grey[900],
    );
  }
}
