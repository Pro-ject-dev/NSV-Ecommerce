import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    final wit = MediaQuery.of(context);
    return MediaQuery(
        data: wit.copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.black,
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
                        onPressed: () {},
                        icon: Icon(Icons.menu,
                            color: Colors.white, size: hei / 34)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text(
                      "Ordering Stamps",
                      style: TextStyle(
                          fontSize: wid / 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'BreeSerif',
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
                      // Navigator.push(context,
                      //MaterialPageRoute(builder: (BuildContext) => ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 2),
                      alignment: Alignment.centerRight,
                      height: hei / 6.0,
                      width: wid,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(
                          "asset/p5.png",
                          height: hei / 8.0,
                          width: wid / 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text(
                            "Flat Stamps",
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
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(
                          "asset/p2.png",
                          height: hei / 8.0,
                          width: wid / 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text(
                            "Rounded Stamps",
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
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(
                          "asset/p3.png",
                          height: hei / 8.0,
                          width: wid / 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 35,
                          ),
                          child: Text(
                            "Oval Stamps",
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
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(
                          "asset/p4.png",
                          height: hei / 8.0,
                          width: wid / 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text(
                            "Free Ink (Flat)",
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
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(
                          "asset/p1.png",
                          width: wid / 3.0,
                          height: hei / 8.5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text(
                            "Free Ink (Oval)",
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
              ],
            ),
          ),
        ));
  }
}
