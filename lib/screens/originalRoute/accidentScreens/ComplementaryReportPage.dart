import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:traffic_app/HomePage.dart';
import 'package:traffic_app/components/default_button.dart';
import 'package:traffic_app/screens/originalRoute/AccidentReportScreen.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/Form2.dart';

class ComplementaryReportPage extends StatefulWidget {
  const ComplementaryReportPage({Key? key}) : super(key: key);

  @override
  _ComplementaryReportPageState createState() =>
      _ComplementaryReportPageState();
}

class _ComplementaryReportPageState extends State<ComplementaryReportPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String dropdownValue = "";
  bool checkBox1 = false;
  bool checkBox2 = false;
  int _n = 0;
  int _m = 0;

  void add1() {
    setState(() {
      _n++;
    });
  }

  void minus1() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add2() {
    setState(() {
      _m++;
    });
  }

  void minus2() {
    setState(() {
      if (_m != 0) _m--;
    });
  }

  TextEditingController _countController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ارسال گزارش تکمیلی",
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
          ),
          elevation: 0.7,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          //padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 30),
          children: [
            Container(
                height: size.height * 0.3,
                child: Stack(children: [
                  Container(
                    height: size.height * 0.25,
                    child: Center(
                      child: ListTile(
                        title: Text(
                          "فرم 1",
                          style: TextStyle(
                              fontFamily: "Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text("اطلاعات وسایل نقلیه",
                            style: TextStyle(
                                fontFamily: "Sans",
                                fontWeight: FontWeight.bold,
                                fontSize: 28),
                            textAlign: TextAlign.center),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36))),
                  ),
                ])),
            Text(
              "نوع وسایل نقلیه درگیر:",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Container(
              child: Row(
                textDirection: TextDirection.rtl,
                //mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    value: checkBox1,
                    onChanged: (val) {
                      setState(() {
                        if(_n == 1){
                          _n = 0;
                          checkBox1 = val!;
                        }else {
                          _n = 1;
                          checkBox1 = val!;
                        }

                        // checkBox2 = false;
                      });
                    },
                  ),
                  // SizedBox(width: 5,),
                  Text(
                    "وسایل نقلیه غیرموتوری(دوچرخه،سه چرخه)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 12.5,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: add1,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.blueGrey[100],
                  mini: true,
                ),
                Text(
                  '$_n',
                  style: TextStyle(fontSize: 25),
                ),
                FloatingActionButton(
                  mini: true,
                  onPressed: minus1,
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.blueGrey[100],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Checkbox(
                    value: checkBox2,
                    onChanged: (val) {
                      setState(() {
                        if(_m == 1){
                          _m = 0;
                          checkBox2 = val!;
                        }else {
                          _m = 1;
                          checkBox2 = val!;
                        }
                      });
                    },
                  ),
                  // SizedBox(width: 5,),
                  Text(
                    "وسایل نقلیه موتوری(موتورسیکلت،سدان،کراس،شاسی)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: add2,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.blueGrey[100],
                  mini: true,
                ),
                Text(
                  '$_m',
                  style: TextStyle(fontSize: 25),
                ),
                FloatingActionButton(
                  mini: true,
                  onPressed: minus2,
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.blueGrey[100],
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            DefaultButton(
              text: "بعدی",
              press: () {
                // Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form2()));
              },
            )
          ],
        ));
  }
}

// SingleChildScrollView(
//   child: Padding(
//     padding: EdgeInsets.only(left: 20,right: 20,top: 80),
//     child: Center(
//       child: Column(
//         children: [
//           Text(
//             "علت تصادف",
//             style: TextStyle(
//                 fontFamily: "Sans", fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Material(
//             borderRadius: BorderRadius.circular(20),
//             elevation: 20,
//             child: TextField(
//               textDirection: TextDirection.rtl,
//               maxLines: 8,
//               maxLength: 400,
//               keyboardType: TextInputType.multiline,
//               style: TextStyle(
//                 fontFamily: "Sans",
//                 inherit: true,
//               ),
//               textAlign: TextAlign.right,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 // contentPadding: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 15),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 80,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 60, right: 60),
//             child: Material(
//               elevation: 10,
//               shadowColor: Colors.grey[800],
//               color: Colors.blue[500],
//               borderRadius: BorderRadius.circular(30),
//               child: InkWell(
//                 onTap: () {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                       duration: const Duration(seconds: 3),
//                       content: Text(
//                         "گزارشات ثبت و به مرکز ارسال شد.",
//                         textAlign: TextAlign.center,
//                         textDirection: TextDirection.rtl,
//                         style: TextStyle(fontFamily: "Sans", fontSize: 20),
//                       )));
//                   Navigator.pop(context);
//                 },
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                   height: 45,
//                   width: MediaQuery.of(context).size.width,
//                   child: Center(
//                     child: Text(
//                       "ارسال گزارش",
//                       style: TextStyle(color: Colors.white, fontFamily: "Sans"),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
