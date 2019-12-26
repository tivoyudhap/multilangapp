import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do_list_app/home/HomeScreen.dart';
import 'package:to_do_list_app/locale/MyLocalizationDelegate.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  final MyLocalizationDelegate localizationDelegate = MyLocalizationDelegate(Locale('en', 'US'));

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
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
      home: Scaffold(
          body: SafeArea(
            child: Center(
                child: Image.asset("assets/image/ic_flutter.png")
            ),
          )
      ),
    );
  }
}