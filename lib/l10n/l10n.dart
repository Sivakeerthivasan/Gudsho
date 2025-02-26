import 'dart:ui';

class L10n {
  static final locales = [
    Locale('en'),
  ];
  static Locale getLanguageCode(String languageToCode) {
    switch (languageToCode) {
      default:
        return Locale('en');
    }
  }
}
