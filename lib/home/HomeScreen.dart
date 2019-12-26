import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do_list_app/locale/MyLocalization.dart';
import 'package:to_do_list_app/locale/MyLocalizationDelegate.dart';

class HomeScreen extends StatelessWidget {

  final MyLocalizationDelegate localizationDelegate = MyLocalizationDelegate(Locale('en', 'US'));

  @override
  Widget build(BuildContext context) {
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
      home: HomeScreenStateful(),
    );
  }
}

class HomeScreenStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreenStateful> {
  int numberOfClick = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text('${MyLocalization.of(context).youHaveClicked} $numberOfClick'),
              Text(MyLocalization.of(context).helloWorld),
              Text(MyLocalization.of(context).notePlaceholder),
              Row(
                children: <Widget>[
                  RaisedButton(child: Text("English"), onPressed: () {
                    setState(() {
                      MyLocalization.load(Locale('en', 'US'));
                    });
                  }),
                  RaisedButton(child: Text("Indonesia"), onPressed: () {
                    setState(() {
                      MyLocalization.load(Locale('id', 'ID'));
                    });
                  })
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            tooltip: "Add data",
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                numberOfClick++;
              });
            }));
  }
}
