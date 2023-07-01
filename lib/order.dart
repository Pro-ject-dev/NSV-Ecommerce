import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class order extends StatelessWidget {
  const order({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    final wit = MediaQuery.of(context);

    return MediaQuery(
        data: wit.copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              height: hei / 9,
              width: wid,
              color: Colors.lightBlue.shade400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3, top: 27, right: 4),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_sharp,
                          color: Colors.white, size: hei / 34),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text(
                      "ORDER MATTERS",
                      style: TextStyle(
                          fontSize: wid / 19.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Audiowide',
                          shadows: [
                            Shadow(blurRadius: 7, offset: Offset(1, 1))
                          ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24, left: 4, right: 5),
                    child: Image.asset("asset/ro.png", height: hei / 15),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(hei),
          ),
        ));
  }
}
