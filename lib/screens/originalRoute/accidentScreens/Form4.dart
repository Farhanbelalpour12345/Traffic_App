import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/components/default_button.dart';
import 'package:traffic_app/screens/originalRoute/AccidentReportScreen.dart';


class Form4 extends StatefulWidget {
  const Form4({Key? key}) : super(key: key);

  @override
  _Form4State createState() => _Form4State();
}

class _Form4State extends State<Form4> {
  String dropdownValue1 = "";
  String dropdownValue2 = "";
  String dropdownValue3 = "";



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
            child: Stack(
              children:[ Container(
                height: size.height * 0.25,
                child: Center(
                  child: ListTile(
                    title: Text(
                      "فرم 4",
                      style: TextStyle(
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text("توصیف محیط تصادف",
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
          // SizedBox(
          //   height: 40,
          // ),
          Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ":وضعیت آب و هوایی",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sans",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue1,
                    isExpanded: true,
                    iconSize: 34,
                    elevation: 16,
                    style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontFamily: "Sans",
                        fontSize: 12,inherit: true),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    items: <String>[
                      "",
                      " 'صاف'",
                      "'ابری'",
                      "'بارانی'",
                      "'برفی'",
                      "'طوفانی'",
                      "'مه آلود'",
                      "'گرد و غبار'"
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          textDirection:TextDirection.rtl,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ":نوع سطح جاده",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sans",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    isExpanded: true,
                    iconSize: 34,
                    elevation: 16,
                    style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontFamily: "Sans",
                        fontSize: 12,inherit: true),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: <String>[
                      "",
                      " 'آسفالت'",
                      "'خاکی'"
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          textDirection:TextDirection.rtl,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ":درجه راه",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sans",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue3,
                    isExpanded: true,
                    iconSize: 34,
                    elevation: 16,
                    style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontFamily: "Sans",
                        fontSize: 12,inherit: true),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue3 = newValue!;
                      });
                    },
                    items: <String>[
                      "",
                      " 'بزرگراه و آزادراه'",
                      "'سایر راه های اصلی'",
                      "'راه های فرعی و روستایی'"
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          textDirection:TextDirection.rtl,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              )),
          SizedBox(
            height: 40,
          ),
          DefaultButton(
            text: "ارسال گزارش",
            press: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccidentReportScreen()));
            }
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )
    );
  }
}
