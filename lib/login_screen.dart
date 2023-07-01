// ignore_for_file: avoid_print, avoid_unnecessary_containers, unused_local_variable, duplicate_ignore, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Forgot_password.dart';
import 'package:flutter_application_1/Login_interface.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _secureText = true;
  late String _email, _password, em;
  Future showdialog(BuildContext, String message) async {
    return showDialog(
        builder: (context) => new AlertDialog(
              title: new Text(
                message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              actions: [
                new FlatButton(
                    color: Colors.white,
                    onPressed: () => {Navigator.pop(context)},
                    child: new Text("OK",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 15,
                        )))
              ],
            ),
        context: context);
  }

  void login(BuildContext context) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password)
        .catchError((onError) {
      showdialog(BuildContext, "Invalid login details");
    }).then((authUser) {
      if (authUser.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => userlogin()));
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final wit = MediaQuery.of(context);
    return MediaQuery(
        data: wit.copyWith(textScaleFactor: 1.01), child: initWidget());
  }

  Widget initWidget() {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              (Image.asset(
                "asset/logo.png",
                height: hei / 2.3,
                width: wid,
                fit: BoxFit.fill,
              )),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: wid / 15,
                        color: Colors.lightBlue.shade400,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Audiowide',
                        shadows: [Shadow(blurRadius: 3, color: Colors.grey)]),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      offset: Offset(10, 10),
                      color: Colors.grey.shade100)
                ], borderRadius: BorderRadius.circular(9)),
                margin: EdgeInsets.only(left: 13, right: 13),
                padding: EdgeInsets.only(top: 20),
                child: TextFormField(
                  onSaved: (value) {
                    _email = value!;
                  },
                  validator: (email) {
                    if (email!.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(email)) {
                      return "Enter valid email";
                    } else {
                      return null;
                    }
                  },
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: const Icon(Icons.email_outlined,
                          color: Colors.purple),
                      hintText: "Enter your email",
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 1)),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: 'ReadexPro')),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(10, 10),
                          color: Colors.grey.shade100)
                    ]),
                margin: EdgeInsets.only(left: 13, right: 13),
                padding: EdgeInsets.only(top: 30),
                child: TextFormField(
                  onSaved: (value) {
                    _password = value!;
                  },
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return 'Please enter your password';
                    } else if (pass.length < 8) {
                      return "Password strength is low";
                    } else {
                      return null;
                    }
                  },
                  obscureText: _secureText,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: const Icon(
                        Icons.lock_outlined,
                        color: Colors.deepOrange,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                        child: Icon(
                          !_secureText
                              ? Icons.visibility
                              : Icons.visibility_off_sharp,
                          color: Colors.lightBlue,
                        ),
                      ),
                      hintText: "Enter your password",
                      fillColor: Colors.white,
                      filled: true,
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 1)),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: "Readexpro")),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, right: 25),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Text("Forgot Password ?",
                      style: TextStyle(
                          fontSize: wid / 29,
                          color: Colors.pink.shade600,
                          fontFamily: 'ReadexPro')),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => Forgot()))
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    (formkey.currentState!.save());
                    login(context);

                    print(_email);
                    print(_password);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  height: hei / 15,
                  width: wid / 1.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.lightBlue.shade400,
                      Colors.lightBlue.shade300
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          color: Colors.lightBlue.shade100)
                    ],
                  ),
                  child: Text(
                    "Login to Account",
                    style: TextStyle(
                        fontSize: wid / 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Dongle',
                        shadows: [Shadow(blurRadius: 2, color: Colors.grey)]),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 32),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: wid / 29, fontFamily: 'ReadexPro'),
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => Signup()))
                        },
                        child: Text(" Signup",
                            style: TextStyle(
                                fontSize: wid / 28,
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'ReadexPro')),
                      ),
                    ],
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
