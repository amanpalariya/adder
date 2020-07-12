import 'dart:ui';

import 'package:adder_game/presentation/core/localizations/app_localization.dart';

class AppLocalizationHi extends AppLocalization {
  AppLocalizationHi() : super(Locale('hi'));

  @override
  String get about => "बारे में";

  @override
  String get appName => "एड्डर";

  @override
  String get areYouReady => "क्या आप तैयार हैं?";

  @override
  String get changeTheme => "रंग-रूप बदलें";

  @override
  String get changeLanguage => "भाषा बदलें";

  @override
  String get correct => "सही";

  @override
  String get english => "अंग्रेज़ी";

  @override
  String get hindi => "हिन्दी";

  @override
  String get incorrect => "गलत";

  @override
  String get missed => "छूटे";

  @override
  String get no => "नहीं";

  @override
  String get quizPageTitle => "एड्डर";

  @override
  String get restart => "पुनः शुरू";

  @override
  String get start => "शुरू";

  @override
  String get system => "तंत्र";

  @override
  String get total => "कुल";

  @override
  String get yes => "हाँ";

  @override
  String get dark => "काला";

  @override
  String get light => "सफ़ेद";

  @override
  String get question => "प्रशन";

  @override
  String get answer => "उत्तर";

  @override
  String get aboutDialogContent =>
      "एक खेल जो आपके संख्याओं को जोड़ने के कौशल को बढ़ाता है। इस एप्प के साथ समय बिताने से आपको लाभ होगा।";
}
