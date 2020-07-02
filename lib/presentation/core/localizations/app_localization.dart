import 'package:adder_game/presentation/core/localizations/app_localization_en.dart';
import 'package:adder_game/presentation/core/localizations/app_localization_hi.dart';
import 'package:flutter/material.dart';

abstract class AppLocalization {
  final Locale locale;

  AppLocalization(this.locale);

  String get appName;
  String get quizPageTitle;
  String get areYouReady;
  String get changeTheme;
  String get changeLanguage;
  String get about;
  String get aboutDialogContent;
  String get yes;
  String get no;
  String get start;
  String get restart;
  String get correct;
  String get incorrect;
  String get missed;
  String get total;
  String get system;
  String get english;
  String get hindi;
  String get light;
  String get dark;
  String get question;
  String get answer;

  static AppLocalization of(BuildContext context) => Localizations.of<AppLocalization>(context, AppLocalization);
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  static List<Locale> get supportedLocales => const [
        Locale('en'),
        Locale('hi'),
      ];

  @override
  bool isSupported(Locale locale) {
    return supportedLocales.any((supportedLocale) => supportedLocale.languageCode == locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return AppLocalizationEn();
        break;
      case 'hi':
        return AppLocalizationHi();
        break;
      default:
        return AppLocalizationEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}
