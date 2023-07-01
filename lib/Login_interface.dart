import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/pages/page.dart';

class userlogin extends StatefulWidget {
  userlogin({Key? key}) : super(key: key);

  @override
  State<userlogin> createState() => _userloginState();
}

class _userloginState extends State<userlogin> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    final wit = MediaQuery.of(context);
    double xoffset = 0;
    double yoffset = 0;

    bool isDrawerOPen = false;
    return MediaQuery(
        data: wit.copyWith(textScaleFactor: 1.0),
        child: Stack(children: [
          const Drawerh(),
          AnimatedContainer(
            transform: Matrix4.translationValues(xoffset, yoffset, 0)
              ..scale(isDrawerOPen ? wid / 500 : wid / 480)
              ..rotateZ(isDrawerOPen ? wid / 25.25 : wid / 25.46),
            duration: const Duration(milliseconds: 200),
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
                          child: isDrawerOPen
                              ? IconButton(
                                  icon: Icon(Icons.arrow_back_sharp,
                                      color: Colors.white, size: hei / 34),
                                  onPressed: () {
                                    setState(() {
                                      xoffset = 0;
                                      yoffset = 0;
                                      isDrawerOPen = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.menu,
                                      color: Colors.white, size: hei / 34),
                                  onPressed: () {
                                    setState(() {
                                      xoffset = wid / 2;
                                      yoffset = wid / 5.8;
                                      isDrawerOPen = true;
                                    });
                                  },
                                )),
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Text(
                          "NSV RUBBER STAMPS",
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => page1()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 2),
                          alignment: Alignment.centerRight,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                // ignore: prefer_const_constructors
                                BoxShadow(blurRadius: 20, color: Colors.green)
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p8.png",
                              height: hei * 0.1,
                              width: wid / 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 38),
                              child: Text(
                                "Order Stamps",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            )
                          ]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.center,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    color: Colors.deepPurple,
                                    offset: Offset(0, 9))
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p6.png",
                              height: hei * 0.1,
                              width: wid / 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 38),
                              child: Text(
                                "Return Stamps",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            )
                          ]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.centerRight,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    color: Color(0xD2025ABE),
                                    offset: Offset(0, 9))
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p7.png",
                              height: hei * 0.1,
                              width: wid / 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 35,
                              ),
                              child: Text(
                                "Download E-receipt",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xD2025ABE),
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            )
                          ]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.centerRight,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    color: Color(0xEFFF6D33),
                                    offset: Offset(0, 9))
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p9.png",
                              height: hei * 0.1,
                              width: wid / 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 38),
                              child: Text(
                                "%Offers%",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    color: Color(0xEFFF6D33),
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            )
                          ]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.centerRight,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    color: Color(0xDEF52648),
                                    offset: Offset(0, 9))
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p10.png",
                              width: wid / 4,
                              height: hei * 0.090,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 38),
                              child: Text(
                                "About",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    color: Color(0xDEF52648),
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            )
                          ]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5, bottom: 2),
                          alignment: Alignment.centerRight,
                          height: hei / 6.0,
                          width: wid,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    color: Color(0xF308BEA0),
                                    offset: Offset(0, 9))
                              ]),
                          child: Row(children: [
                            Image.asset(
                              "asset/p11.png",
                              height: hei * 0.1,
                              width: wid / 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 38),
                              child: Text(
                                "Review",
                                style: TextStyle(
                                    fontFamily: 'ReaderPro',
                                    fontSize: hei / 26.0,
                                    color: Color(0xF308BEA0),
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 4,
                                          color: Colors.black54,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                            ),
                          ]),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
