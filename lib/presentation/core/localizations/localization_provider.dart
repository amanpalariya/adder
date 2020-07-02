import 'package:adder_game/presentation/core/localizations/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class LocalizationProvider with ChangeNotifier {
  bool useSystem;
  Locale _systemLocale;
  Locale _currentLocale;

  LocalizationProvider() {
    useSystem = true;
  }

  Locale get currentLocale => useSystem ? _systemLocale : _currentLocale;

  List<Locale> get supportedLocales => AppLocalizationDelegate.supportedLocales;

  List<LocalizationsDelegate> get localizationsDelegates => [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizationDelegate(),
      ];

  Locale localeResolutionCallback(Locale systemLocale, _) {
    _systemLocale = systemLocale;
    return currentLocale;
  }

  void changeLocale({bool useSystemLocale = false, Locale locale}) {
    assert(useSystemLocale || locale != null);
    if (useSystemLocale) {
      useSystem = true;
      print("Using system locale");
    } else {
      useSystem = false;
      _currentLocale = locale;
      print("Using custom locale");
    }
    notifyListeners();
  }

  static LocalizationProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<LocalizationProvider>(context, listen: listen);
}
