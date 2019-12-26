import 'package:flutter/material.dart';
import 'package:to_do_list_app/locale/MyLocalization.dart';

class MyLocalizationDelegate extends LocalizationsDelegate<MyLocalization> {

  final Locale locale;

  const MyLocalizationDelegate(this.locale);

  @override
  bool isSupported(Locale locale) {
    return ['en', 'id'].contains(locale.languageCode);
  }

  @override
  Future<MyLocalization> load(Locale locale) {
    return MyLocalization.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyLocalization> old) {
    return false;
  }
}