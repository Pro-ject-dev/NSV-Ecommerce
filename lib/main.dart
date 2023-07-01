import "package:flutter/material.dart";
import 'package:flutter_application_1/Login_interface.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/no_internet.dart';
import 'package:flutter_application_1/order.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:provider/provider.dart';
import 'provider.dart/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProviderState())],
    child: MyProvider(),
  ));
}

class MyProvider extends StatelessWidget {
  const MyProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
