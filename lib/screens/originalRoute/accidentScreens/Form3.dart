import 'package:flutter/material.dart';
import 'package:traffic_app/components/default_button.dart';
import 'package:traffic_app/constants.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/Form4.dart';

class Form3 extends StatefulWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  _Form3State createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;
  bool checkBox5 = false;
  bool checkBox6 = false;

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
          //padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          children: [
            Container(
              height: size.height * 0.3,
              child: Stack(children: [
                Container(
                  height: size.height * 0.25,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "فرم 3",
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text("اطلاعات تصادف و قربانیان",
                          style: TextStyle(
                              fontFamily: "Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
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
            Text(
              "خسارت مالی",
              style: TextStyle(
                  fontFamily: "Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.ltr,
              children: [
                Checkbox(
                  value: checkBox1,
                  onChanged: (val) {
                    setState(() {
                      checkBox1 = val!;
                      checkBox2 = false;
                    });
                  },
                  splashRadius: 3,
                ),
                Text(
                  "بله",
                  style: TextStyle(fontSize: 15, fontFamily: "Sans"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                children: [
                  Checkbox(
                    value: checkBox2,
                    onChanged: (val) {
                      setState(() {
                        checkBox2 = val!;
                        checkBox1 = false;
                      });
                    },
                    splashRadius: 3,
                  ),
                  Text(
                    "خیر",
                    style: TextStyle(fontSize: 14, fontFamily: "Sans"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "جرحی یا آسیب دیده",
              style: TextStyle(
                  fontFamily: "Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  width: 120,
                  child: TextField(
                      enabled: checkBox3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: kTextColor),
                          gapPadding: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: kTextColor),
                          gapPadding: 5,
                        ),
                        hintText: 'تعداد',
                        hintStyle: TextStyle(color: Colors.black54),
                      )),
                ),
                SizedBox(
                  width: 80,
                ),
                Checkbox(
                  value: checkBox3,
                  onChanged: (val) {
                    setState(() {
                      checkBox3 = val!;
                      checkBox4 = false;
                    });
                  },
                  splashRadius: 3,
                ),
                Text(
                  "بله",
                  style: TextStyle(fontSize: 15, fontFamily: "Sans"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                children: [
                  Checkbox(
                    value: checkBox4,
                    onChanged: (val) {
                      setState(() {
                        checkBox4 = val!;
                        checkBox3 = false;
                      });
                    },
                    splashRadius: 3,
                  ),
                  Text(
                    "خیر",
                    style: TextStyle(fontSize: 14, fontFamily: "Sans"),
                  )
                ],
              ),
            ),
            Text(
              "فوتی",
              style: TextStyle(
                  fontFamily: "Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  width: 120,
                  child: TextField(
                      enabled: checkBox5,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: kTextColor),
                          gapPadding: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: kTextColor),
                          gapPadding: 5,
                        ),
                        hintText: 'تعداد',
                        hintStyle: TextStyle(color: Colors.black54),
                      )),
                ),
                SizedBox(
                  width: 80,
                ),
                Checkbox(
                  value: checkBox5,
                  onChanged: (val) {
                    setState(() {
                      checkBox5 = val!;
                      checkBox6 = false;
                    });
                  },
                  splashRadius: 3,
                ),
                Text(
                  "بله",
                  style: TextStyle(fontSize: 15, fontFamily: "Sans"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                children: [
                  Checkbox(
                    value: checkBox6,
                    onChanged: (val) {
                      setState(() {
                        checkBox6 = val!;
                        checkBox5 = false;
                      });
                    },
                    splashRadius: 3,
                  ),
                  Text(
                    "خیر",
                    style: TextStyle(fontSize: 14, fontFamily: "Sans"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
              text: "بعدی",
              press: () {
                // Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Form4()));
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
