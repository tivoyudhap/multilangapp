import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list_app/l10n/messages_all.dart';

class MyLocalization {
  static Future<MyLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localizeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localizeName).then((_) {
      Intl.defaultLocale = localizeName;
      return MyLocalization();
    });
  }

  static MyLocalization of (BuildContext context) {
    return Localizations.of<MyLocalization>(context, MyLocalization);
  }

  String get helloWorld {
    return Intl.message(
      'Hello world!',
      name: 'helloWorld',
      desc: 'For hello world'
    );
  }
  
  String get title {
    return Intl.message(
      "To Do List App!",
      name: "title"
    );
  }

  String get notePlaceholder {
    return Intl.message(
      'Input your note',
      name: 'notePlaceholder'
    );
  }

  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit'
    );
  }

  String get youHaveClicked {
    return Intl.message(
        'You\'ve clicked: ',
        name: 'youHaveClicked'
    );
  }
}