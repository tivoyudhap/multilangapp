import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do_list_app/home/HomeScreen.dart';
import 'package:to_do_list_app/locale/MyLocalizationDelegate.dart';
import 'package:to_do_list_app/splashScreen/SplashScreenStateful.dart';

class SplashScreenScreen extends StatelessWidget {

  final MyLocalizationDelegate localizationDelegate = MyLocalizationDelegate(Locale('en', 'US'));

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        localizationDelegate
      ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('id', 'ID')
        ],
      title: "To Do List",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreenStateful()
    );
  }
}