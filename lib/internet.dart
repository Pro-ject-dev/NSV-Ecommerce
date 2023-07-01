import 'package:flutter/material.dart';

class internet extends StatefulWidget {
  const internet({Key? key}) : super(key: key);

  @override
  _internetState createState() => _internetState();
}

class _internetState extends State<internet> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(
                "asset/no.png",
                height: hei / 3,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Text(
                "No Internet Connection",
                style: TextStyle(
                    fontSize: hei / 32,
                    fontFamily: 'ReadexPro',
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    shadows: [Shadow(blurRadius: 2, offset: Offset(1, 1))]),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: Text(
                  "! please check your internet connectivity !",
                  style: TextStyle(
                      fontSize: hei / 36,
                      fontFamily: 'ReadexPro',
                      color: Colors.red.shade600,
                      shadows: [Shadow(blurRadius: 2, offset: Offset(1, 2))]),
                ))
          ],
        ));
  }
}
