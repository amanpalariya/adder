import 'package:adder_game/presentation/core/localizations/localization_provider.dart';
import 'package:adder_game/presentation/core/theme/theme_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LocalizationProvider(),
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        ThemeProvider themeProvider = ThemeProvider.of(context);
        LocalizationProvider localizationProvider = LocalizationProvider.of(context);
        return MaterialApp(
          theme: themeProvider.lightTheme,
          darkTheme: themeProvider.darkTheme,
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          supportedLocales: localizationProvider.supportedLocales,
          // localeResolutionCallback: (locale, supportedLocales) => locale,
          locale: localizationProvider.currentLocale,
          localizationsDelegates: localizationProvider.localizationsDelegates,
          home: QuizWidget(),
        );
      }),
    );
  }
}
