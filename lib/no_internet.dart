import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/internet.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/splash_screen.dart';

class nointernet extends StatefulWidget {
  const nointernet({Key? key}) : super(key: key);

  @override
  _nointernetState createState() => _nointernetState();
}

class _nointernetState extends State<nointernet> {
  String result = '';
  var colorsvalue = Colors.white;
  @override
  void initState() {
    CheckStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsvalue,
      body: Container(
          alignment: Alignment.center,
          child: Text(
            result != null ? result : '',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

  void CheckStatus() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => internet()));
      }
    });
  }
}
