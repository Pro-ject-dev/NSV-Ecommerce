import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup.dart';

import '../login_screen.dart';

class ProviderState extends ChangeNotifier {
  late String Uid, Email;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> CreateUserAccount(String email, String Password) async {
    bool success = false;
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: Password);
      if (userCredential != null) {
        Uid = userCredential.user!.uid;
        Email = userCredential.user!.email!;
        return success = true;
      }
      // ignore: non_constant_identifier_names
    } catch (e) {}
    return success;
  }
}

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
