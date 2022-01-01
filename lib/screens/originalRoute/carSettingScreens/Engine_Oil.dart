import 'dart:convert';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:provider/provider.dart';
import 'package:traffic_app/HomePage.dart';
import 'package:traffic_app/Services/database.dart';


class EngineOil extends StatefulWidget {
  const EngineOil({Key? key}) : super(key: key);

  @override
  _EngineOilState createState() => _EngineOilState();
}

class _EngineOilState extends State<EngineOil> {
  String dropdownValue = "سرکان10-40";
  final kilometerController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List oilInfoList = [];
  late String km;
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchDataBase();
  }

  // fetchDataBase()async{
  //   dynamic result = await DatabaseService(_auth.currentUser!.uid).getOilEngineInfo;
  //
  //   setState(() {
  // oilInfoList = result;
  // oilInfoList.forEach((element) {
  //   km = element["km"];
  //   print(km);
  // });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "روغن موتور",
          style: TextStyle(fontFamily: "Sans"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(top: 40),
              //   child: Material(
              //     color: Colors.blueGrey[300],
              //     borderRadius: BorderRadius.circular(30),
              //     elevation: 20,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       // textDirection: TextDirection.rtl,
              //       children: [
              //         Text(
              //           "نوع روغن :",
              //           // textDirection: TextDirection.ltr,
              //           textAlign: TextAlign.right,
              //           style: TextStyle(
              //               fontFamily: "Sans",
              //               fontWeight: FontWeight.bold,
              //               fontSize: 17),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         DropdownButton<String>(
              //           value: dropdownValue,
              //           iconSize: 34,
              //           elevation: 16,
              //           style: const TextStyle(
              //               color: Colors.deepPurple, fontFamily: "Sans"),
              //           underline: Container(
              //             height: 2,
              //             color: Colors.deepPurpleAccent,
              //           ),
              //           onChanged: (String? newValue) {
              //             setState(() {
              //               dropdownValue = newValue!;
              //             });
              //           },
              //           items: <String>[
              //             "سرکان10-40",
              //             "سرکان10-20",
              //             "کاسپین",
              //             "سپاهان",
              //             "فومن شیمی",
              //             "بهرام",
              //             "سایر"
              //           ].map<DropdownMenuItem<String>>((String value) {
              //             return DropdownMenuItem<String>(
              //               value: value,
              //               child: Text(value),
              //             );
              //           }).toList(),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "نوع روغن موتور",
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 20,
                          child: TextField(
                           decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "لطفا نوع روغن خودرو را وارد کنید",
                                hintStyle: TextStyle(fontFamily: "Sans"),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.blue))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "کیلومتر",
                style: TextStyle(
                    fontFamily: "Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
                textAlign: TextAlign.right,
                // textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 20,
                    child: TextField(
                      controller: kilometerController,
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        print("first text $val");
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "لطفا کیلومتر فعلی خودرو را وارد کنید",
                          hintStyle: TextStyle(fontFamily: "Sans"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue))),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Text("تاریخ تعویض مجدد",style: TextStyle(fontFamily: "Sans",fontWeight: FontWeight.bold,fontSize: 17),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ماه",style: TextStyle(fontSize: 14),),
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
                        ),
                        Text("پس از",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "تاریخ تعویض روغن",
                style: TextStyle(
                    fontFamily: "Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
                textAlign: TextAlign.right,
                // textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 20,
              ),
              LinearDatePicker(
                  startDate: "1390/10/17",
                  //yyyy/mm/dd
                  endDate: "1410/02/20",
                  // initialDate: "1400/05/15",
                  dateChangeListener: (selectedDate) {
                    print(selectedDate);
                  },
                  showDay: true,
                  //false -> only select year & month
                  labelStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  selectedRowStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 18.0,
                    color: Colors.deepOrange,
                  ),
                  unselectedRowStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ),
                  yearText: "سال | year",
                  monthText: "ماه | month",
                  dayText: "روز | day",
                  showLabels: true,
                  // to show column captions, eg. year, month, etc.
                  columnWidth: 100,
                  showMonthName: true,
                  isJalaali: true // false -> Gregorian
                  ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey[800],
                  color: Colors.blueGrey[500],
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: () async {
                      DateTime now = DateTime.now();
                      String formattedDate =
                          DateFormat('yyyy-MM-dd – kk:mm').format(now);
                      await DatabaseService(_auth.currentUser!.uid)
                          .saveOilEngineInfo(
                              kilometerController.text, formattedDate);
                      // print(oilInfoList[]["km"]);
                      Get.back();
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "ذخیره تغییرات",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Sans"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),
              // Text(
              //   "تا تعویض بعدی",
              //   style: TextStyle(
              //       fontFamily: "Sans",
              //       fontWeight: FontWeight.bold,
              //       fontSize: 17),
              //   textAlign: TextAlign.right,
              //   textDirection: TextDirection.rtl,
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   child: Material(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.blueGrey[300],
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       textDirection: TextDirection.rtl,
              //       children: [
              //         Text(
              //           "1",
              //           style: TextStyle(
              //               fontFamily: "Sans",
              //               fontWeight: FontWeight.bold,
              //               fontSize: 30,
              //               color: Colors.blue),
              //         ),
              //         SizedBox(
              //           width: 2,
              //         ),
              //         Text("ماه",
              //             style: TextStyle(fontFamily: "Sans", fontSize: 20)),
              //         SizedBox(
              //           width: 5,
              //         ),
              //         Text("4",
              //             style: TextStyle(
              //                 fontFamily: "Sans",
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 30,
              //                 color: Colors.blue)),
              //         SizedBox(
              //           width: 5,
              //         ),
              //         Text("روز",
              //             style: TextStyle(fontFamily: "Sans", fontSize: 20)),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      //),
    );
  }

// oil(context) {
//   DateTime now = DateTime.now();
//   final oil = Provider.of<QuerySnapshot>(context);
//   for (var doc in oil.docs) {
//     print(doc.data());
//   }
// }
}
// class Oil extends StatefulWidget {
//   const Oil({Key? key}) : super(key: key);
//
//   @override
//   _OilState createState() => _OilState();
// }
//
// class _OilState extends State<Oil> {
//
//   calculate() {
//
//
//
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     final oil = Provider.of<QuerySnapshot>(context);
//     print(oil.docs);
//     for(var doc in oil.docs){
//       print(doc.data());
//     }
//     return Container();
//   }
// }
