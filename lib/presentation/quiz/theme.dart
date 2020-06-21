import 'package:flutter/material.dart';

class MyTheme {
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

  MyTheme._({
    this.yesButtonColor,
    this.noButtonColor,
    this.primaryColor,
    this.onPrimaryColor,
    this.secondaryColor,
    this.onSecondaryColor,
    this.backgroundColor,
    this.cardColor,
    this.cardBorderColor,
    this.correctAnswerColor,
    this.incorrectAnswerColor,
    this.missedAnswerColor,
    this.primaryTextColor,
    this.secondaryTextColor,
    this.tertiaryTextColor,
    this.appBarActionIconColor,
  });

  factory MyTheme.light(ThemeData themeData) => MyTheme._(
        primaryColor: themeData.primaryColor,
        secondaryColor: themeData.accentColor,
        backgroundColor: themeData.backgroundColor,
        primaryTextColor: Colors.grey[800],
      );

  factory MyTheme.dark(ThemeData themeData) => MyTheme._(
        primaryColor: themeData.primaryColor,
        secondaryColor: themeData.accentColor,
        backgroundColor: themeData.backgroundColor,
      );

  factory MyTheme.fromTheme(ThemeData themeData) {
    if (themeData.brightness == Brightness.light) {
      return MyTheme.light(themeData);
    } else {
      return MyTheme.dark(themeData);
    }
  }
}
