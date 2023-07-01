import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:provider/provider.dart';
import 'provider.dart/provider.dart';
import 'package:flutter/src/material/dialog.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Signup> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _secureText = true;
  bool _ssecureText = true;
  late final _password = TextEditingController();
  final conform = TextEditingController();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController password = TextEditingController();
  Future showdialog(BuildContext context, String message) async {
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()))
                        },
                    child: new Text("OK",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 15,
                        )))
              ],
            ),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (Image.asset(
                          "asset/logo.png",
                          height: hei / 2.3,
                          width: wid,
                          fit: BoxFit.fill,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                  fontSize: wid / 15,
                                  color: Colors.lightBlue.shade400,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'AudioWide',
                                  shadows: [
                                    Shadow(blurRadius: 2, color: Colors.grey)
                                  ]),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 10),
                                color: Colors.grey.shade100)
                          ], borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(top: 20, left: 18, right: 18),
                          child: TextFormField(
                            validator: (name) {
                              if (name!.isEmpty) {
                                return 'is required';
                              } else {
                                return null;
                              }
                            },
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: const Icon(Icons.person,
                                    color: Colors.purple),
                                hintText: "First Name",
                                fillColor: Colors.white,
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 1)),
                                labelText: "First Name",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ReadexPro')),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 10),
                                color: Colors.grey.shade100)
                          ], borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(top: 2, left: 18, right: 18),
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (name) {
                              if (name!.isEmpty) {
                                return 'is required';
                              } else {
                                return null;
                              }
                            },
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: const Icon(Icons.person,
                                    color: Colors.lightBlue),
                                hintText: "Last Name",
                                fillColor: Colors.white,
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 1)),
                                labelText: "Last Name",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ReadexPro')),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 10),
                                color: Colors.grey.shade100)
                          ], borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(top: 2, left: 18, right: 18),
                          padding: EdgeInsets.only(top: 20),
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: const Icon(Icons.mail_outline_sharp,
                                    color: Colors.pink),
                                hintText: "Enter your email",
                                fillColor: Colors.white,
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 1)),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ReadexPro')),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                    color: Colors.grey.shade100)
                              ]),
                          margin: EdgeInsets.only(top: 2, left: 18, right: 18),
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: _password,
                            onSaved: (value) {
                              _password != value;
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: const Icon(
                                  Icons.vpn_key_outlined,
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
                                hintText: "Create Password",
                                fillColor: Colors.white,
                                filled: true,
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.red, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 1)),
                                labelText: "Create Password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ReadexPro')),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                    color: Colors.grey.shade100)
                              ]),
                          margin: EdgeInsets.only(top: 2, left: 18, right: 18),
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: conform,
                            onSaved: (value) {},
                            validator: (pass) {
                              if (pass!.isEmpty) {
                                return 'Please enter your password';
                              } else if (pass.length < 8) {
                                return "Password strength is low";
                              }
                              // ignore: unrelated_type_equality_checks
                              else if (pass != _password.value.text) {
                                return ('Password is mismatch');
                              } else {
                                return null;
                              }
                            },
                            obscureText: _ssecureText,
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: const Icon(
                                  Icons.password_sharp,
                                  color: Colors.red,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _ssecureText = !_ssecureText;
                                    });
                                  },
                                  child: Icon(
                                    !_ssecureText
                                        ? Icons.visibility
                                        : Icons.visibility_off_sharp,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                hintText: "Conform Password",
                                fillColor: Colors.white,
                                filled: true,
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.red, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 1)),
                                labelText: "Conform Password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ReadexPro')),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              {
                                RegisterUser(
                                    _email.text, _password.text, context);
                              }
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 30),
                            alignment: Alignment.center,
                            height: hei / 15,
                            width: wid / 2.2,
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
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: wid / 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Dongle',
                                  shadows: [
                                    Shadow(blurRadius: 2, color: Colors.grey)
                                  ]),
                            ),
                          ),
                        ),
                      ])),
            )));
  }

  void RegisterUser(String _email, String _password, context) async {
    ProviderState providerState =
        Provider.of<ProviderState>(context, listen: false);
    try {
      if (await providerState.CreateUserAccount(_email, _password)) {
        showdialog(context, "Account is successfully created");
      }
      // ignore: non_constant_identifier_names
    } catch (OnError) {
      showdialog(context, "Your email is already registered");
    }
  }
}
