import 'package:flutter/material.dart';
import 'package:traffic_app/components/default_button.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/ComplementaryReportPage.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/Form3.dart';

class Form2 extends StatefulWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  _Form2State createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  String dropdownValue = "";
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          //padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
          children: [
            Container(
              height: size.height * 0.3,
              child: Stack(children: [
                Container(
                  height: size.height * 0.25,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "فرم 2",
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text("مکانیسم تصادف",
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
              ]),
            ),
            Column(
              children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Checkbox(
                        value: checkBox1,
                        onChanged: (val) {
                          setState(() {
                            checkBox1 = val!;
                            checkBox2 = false;
                            checkBox3 = false;
                            checkBox4 = false;
                          });
                        },
                      ),
                      // SizedBox(width: 5,),
                      Text(
                        "وسیله نقلیه موتوری یا غیر موتوری با یک وسیله نقلیه موتوری",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ],

                  ),
                Row(
                  textDirection: TextDirection.rtl,

                  children: [
                    Checkbox(
                      value: checkBox2,
                      onChanged: (val) {
                        setState(() {
                          checkBox2 = val!;
                          checkBox1 = false;
                          checkBox3 = false;
                          checkBox4 = false;
                        });
                      },
                    ),
                    // SizedBox(width: 5,),
                    Text(
                      "وسیله نقلیه موتوری یا غیر موتوری با جسم ثابت",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,

                  children: [
                    Checkbox(
                      value: checkBox3,
                      onChanged: (val) {
                        setState(() {
                          checkBox3 = val!;
                          checkBox1 = false;
                          checkBox2 = false;
                          checkBox4 = false;
                        });
                      },
                    ),
                    // SizedBox(width: 5,),
                    Text(
                      "وسیله نقلیه موتوری یا غیر موتوری با عابر",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,

                  children: [
                    Checkbox(
                      value: checkBox4,
                      onChanged: (val) {
                        setState(() {
                          checkBox4 = val!;
                          checkBox2 = false;
                          checkBox3 = false;
                          checkBox1 = false;
                        });
                      },
                    ),
                    // SizedBox(width: 5,),
                    Text(
                      "سایر",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
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
                    .push(MaterialPageRoute(builder: (context) => Form3()));
              },
            )
          ],
        ));
  }
}
