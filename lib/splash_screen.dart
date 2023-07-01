import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import 'no_internet.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => nointernet()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
        body: Center(
            child: Container(
      alignment: Alignment.center,
      child: Image.asset('asset/ai.png',
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 2),
    )));
  }
}
