import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/splashScreen/SplashScreenStateful.dart';

class SplashScreenState extends State<SplashScreenStateful> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Hahahaha")),
      body: SafeArea(
        child: Center(
          child: Image.asset("assets/image/ic_tell.png")
        ),
      )
    );
  }
}