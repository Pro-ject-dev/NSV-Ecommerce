import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Forgot> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _secureText = true;

  final TextEditingController _email = TextEditingController();
  Future showdialog(BuildContext context, String message) async {
    double wid = MediaQuery.of(context).size.width;
    return showDialog(
        builder: (context) => new AlertDialog(
              title: new Text(
                message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: wid / 24,
                ),
              ),
              actions: [
                new FlatButton(
                    color: Colors.white,
                    onPressed: () => {Navigator.pop(context)},
                    child: new Text("OK",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: wid / 25,
                        )))
              ],
            ),
        context: context);
  }

  void fp(BuildContext context) async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _email.text)
        .then((value) =>
            showdialog(context, "Reset link is send on your registered email"))
        .catchError((onError) {
      showdialog(context, "Please entered your registered email");
    });
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  // ignore: duplicate_ignore
  Widget initWidget() {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable

    return Scaffold(
        body: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (Image.asset(
                  "asset/logo.png",
                  height: hei / 2.3,
                  width: wid,
                  fit: BoxFit.fill,
                )),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: wid / 15,
                        color: Colors.lightBlue.shade400,
                        fontWeight: FontWeight.bold,
                        fontFamily: "AudioWide",
                        shadows: [Shadow(blurRadius: 2, color: Colors.grey)]),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 40),
                  child: Text(
                    "Enter Your Registered Email",
                    style: TextStyle(
                        fontSize: wid / 27,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ReadexPro',
                        shadows: [Shadow(blurRadius: 2, color: Colors.grey)]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 10),
                        color: Colors.grey.shade100)
                  ], borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(top: 10, left: 18, right: 18),
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    controller: _email,
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
                      prefixIcon: const Icon(Icons.email_sharp,
                          color: Colors.lightBlue),
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
                          color: Colors.black, fontFamily: 'ReadexPro'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    if (formkey.currentState!.validate()) {fp(context)}
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    height: hei / 17,
                    width: wid / 1.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.lightBlue.shade400,
                            Colors.lightBlue.shade300
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 20,
                            color: Colors.lightBlue.shade100)
                      ],
                    ),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          fontSize: wid / 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Dongle'),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    ));
  }
}
