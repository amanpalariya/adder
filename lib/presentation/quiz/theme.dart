import 'package:flutter/material.dart';

class MyTheme {
  final Brightness brightness;
  final Color primaryColor;
  final Color onPrimaryColor;
  final Color secondaryColor;
  final Color onSecondaryColor;
  final Color backgroundColor;
  final Color cardColor;
  final Color cardBorderColor;
  final Color correctAnswerColor;
  final Color incorrectAnswerColor;
  final Color missedAnswerColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color tertiaryTextColor;
  final Color appBarActionIconColor;
  final Color yesButtonColor;
  final Color noButtonColor;
  final MaterialColor highTimeRemainingColor;
  final MaterialColor mediumTimeRemainingColor;
  final MaterialColor lowTimeRemainingColor;
  final MaterialColor lessImportantTimeRemainingColor;

  MyTheme._({
    this.brightness,
    this.lessImportantTimeRemainingColor,
    this.highTimeRemainingColor = Colors.green,
    this.mediumTimeRemainingColor = Colors.yellow,
    this.lowTimeRemainingColor = Colors.red,
    this.yesButtonColor = Colors.green,
    this.noButtonColor = Colors.red,
    this.primaryColor,
    this.onPrimaryColor,
    this.secondaryColor,
    this.onSecondaryColor,
    this.backgroundColor,
    this.cardColor,
    this.cardBorderColor,
    this.correctAnswerColor = Colors.green,
    this.incorrectAnswerColor = Colors.red,
    this.missedAnswerColor = Colors.blue,
    this.primaryTextColor,
    this.secondaryTextColor,
    this.tertiaryTextColor,
    this.appBarActionIconColor,
  });

  bool get isLightTheme => brightness==Brightness.light;
  bool get isDarkTheme => brightness==Brightness.dark;

  factory MyTheme.light(ThemeData themeData) => MyTheme._(
      brightness: Brightness.light,
        primaryColor: themeData.primaryColor,
        secondaryColor: themeData.accentColor,
        backgroundColor: themeData.backgroundColor,
        appBarActionIconColor: Colors.grey,
        cardColor: Colors.white,
        cardBorderColor: Colors.grey[300],
        primaryTextColor: Colors.grey[800],
        secondaryTextColor: Colors.grey[500],
        tertiaryTextColor: Colors.grey[300],
        lessImportantTimeRemainingColor: Colors.grey,
      );

  factory MyTheme.dark(ThemeData themeData) => MyTheme._(
      brightness: Brightness.dark,
        primaryColor: themeData.primaryColor,
        secondaryColor: themeData.accentColor,
        backgroundColor: themeData.backgroundColor,
        appBarActionIconColor: Colors.grey[200],
        cardColor: Colors.grey[800],
        cardBorderColor: Colors.grey[700],
        primaryTextColor: Colors.white,
        secondaryTextColor: Colors.grey[100],
        tertiaryTextColor: Colors.grey[500],
        lessImportantTimeRemainingColor: Colors.grey,
      );

  factory MyTheme.fromTheme(ThemeData themeData) {
    if (themeData.brightness == Brightness.light) {
      return MyTheme.light(themeData);
    } else {
      return MyTheme.dark(themeData);
    }
  }
}
