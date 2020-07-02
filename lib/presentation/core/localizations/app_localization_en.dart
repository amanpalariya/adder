import 'dart:ui';

import 'package:adder_game/presentation/core/localizations/app_localization.dart';

class AppLocalizationEn extends AppLocalization {
  AppLocalizationEn() : super(Locale('en'));

  @override
  String get about => "About";

  @override
  String get appName => "Adder";

  @override
  String get areYouReady => "Are you ready?";

  @override
  String get changeTheme => "Change theme";

  @override
  String get changeLanguage => "Change language";

  @override
  String get correct => "Correct";

  @override
  String get english => "English";

  @override
  String get hindi => "Hindi";

  @override
  String get incorrect => "Incorrect";

  @override
  String get missed => "Missed";

  @override
  String get no => "No";

  @override
  String get quizPageTitle => "Adder";

  @override
  String get restart => "Restart";

  @override
  String get start => "Start";

  @override
  String get system => "System";

  @override
  String get total => "Total";

  @override
  String get yes => "Yes";

  @override
  String get dark => "Dark";

  @override
  String get light => "Light";

  @override
  String get question => "Question";

  @override
  String get answer => "Answer";

  @override
  String get aboutDialogContent =>
      "A game that helps you practice your addition skills. Spend time with this app and you will be rewarded.";
}
