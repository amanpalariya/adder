import 'package:adder_game/presentation/core/theme_provider.dart';
import 'package:adder_game/presentation/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Builder(
        builder: (BuildContext context) {
          ThemeProvider themeProvider = ThemeProvider.of(context);
          return MaterialApp(
            theme: themeProvider.lightTheme,
            darkTheme: themeProvider.darkTheme,
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            home: QuizWidget(),
          );
        }
      ),
    );
  }
}
