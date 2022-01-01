import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/ComplementaryReportPage.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/SaveAccidentTime.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../BottomNavigationBar.dart';

class AccidentReportScreen extends StatefulWidget {
  const AccidentReportScreen({Key? key}) : super(key: key);

  @override
  _AccidentReportScreenState createState() => _AccidentReportScreenState();
}

class _AccidentReportScreenState extends State<AccidentReportScreen> {
  TextEditingController _numberCtrl = new TextEditingController();

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    _numberCtrl.text = "115";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "گزارش تصادف",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 3 - 50,
          padding: EdgeInsets.all(10),
          child: GridView.count(
            physics: BouncingScrollPhysics(),
              crossAxisCount: 2, //مشخص کردن دو ستونه بودن بادی
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              children: [
                // Card(
                //   color: Colors.blueGrey[200],
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(30)),
                //   ),
                //   elevation: 7,
                //   child: InkWell(
                //     highlightColor: Colors.red,
                //     onTap: () => launch("tel://115"),
                //
                //     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //     //     duration: const Duration(seconds: 1),
                //     //     content: Text(
                //     //   "تماس با 115",
                //     //   textAlign: TextAlign.center,
                //     //   textDirection: TextDirection.rtl,
                //     //   style: TextStyle(fontFamily: "Sans", fontSize: 20),
                //     // )));
                //     child: Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Container(
                //             // width: 100,
                //             // height: 100,
                //             child: Icon(
                //               Icons.call,
                //               size: 40,
                //             ),
                //           ),
                //           SizedBox(
                //             height: 15,
                //           ),
                //           Text(
                //             "تماس با 115",
                //             style: TextStyle(
                //                 fontFamily: "Sans",
                //                 fontSize: 12,
                //                 color: Colors.black,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Card(
                //   color: Colors.blueGrey[200],
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(30)),
                //   ),
                //   elevation: 7,
                //   child: InkWell(
                //     highlightColor: Colors.red,
                //     onTap: () {
                //       // Navigator.of(context).push(MaterialPageRoute(
                //       //     builder: (context) => SaveLocationPage()));
                //     },
                //     child: Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Container(
                //             // width: 100,
                //             // height: 100,
                //             child: Icon(
                //               Icons.location_on,
                //               size: 40,
                //             ),
                //           ),
                //           SizedBox(
                //             height: 15,
                //           ),
                //           Text(
                //             "ذخیره محل تصادف",
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //                 fontFamily: "Sans",
                //                 fontSize: 12,
                //                 color: Colors.black,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Card(
                //   color: Colors.blueGrey[200],
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(30)),
                //   ),
                //   elevation: 7,
                //   child: InkWell(
                //     highlightColor: Colors.red,
                //     onTap: () {
                //       Get.defaultDialog(
                //         title: "لطفا شماره مورد نظر را انتخاب کنید",
                //         titleStyle: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             color: Colors.black,
                //             fontSize: 15),
                //         content: Column(
                //           children: [
                //             TextButton.icon(
                //                 onPressed: () {
                //                   launch("tel://115");
                //                 },
                //                 icon: Icon(Icons.call),
                //                 label: Text('اورژانس 115')),
                //             SizedBox(
                //               height: 5,
                //             ),
                //             TextButton.icon(
                //                 onPressed: () {
                //                   launch("tel://110");
                //                 },
                //                 icon: Icon(Icons.call),
                //                 label: Text('پلیس 110')),
                //             SizedBox(
                //               height: 5,
                //             ),
                //             TextButton.icon(
                //                 onPressed: () {
                //                   launch("tel://125");
                //                 },
                //                 icon: Icon(Icons.call),
                //                 label: Text('آتش نشانی 125')),
                //             SizedBox(
                //               height: 5,
                //             ),
                //             TextButton.icon(
                //                 onPressed: () {
                //                   launch("tel://112");
                //                 },
                //                 icon: Icon(Icons.call),
                //                 label: Text('هلال احمر 112')),
                //           ],
                //         ),
                //         textCancel: "لغو",
                //         buttonColor: Colors.blueGrey,
                //         backgroundColor: Colors.blueGrey[50],
                //         onCancel: () {
                //           Get.to(AccidentReportScreen());
                //         },
                //         confirmTextColor: Colors.white54.withOpacity(0.8),
                //         cancelTextColor: Colors.red.withOpacity(0.8),
                //         // cancel: Text("Cancel Text"),
                //         // confirm: Text("Confirm Text"),
                //         barrierDismissible: false,
                //         onWillPop: () async {
                //           return false;
                //         },
                //       );
                //     },
                //     child: Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Container(
                //             // width: 100,
                //             // height: 100,
                //             child: Icon(
                //               Icons.add_call,
                //               size: 40,
                //             ),
                //           ),
                //           SizedBox(
                //             height: 15,
                //           ),
                //           Text(
                //             "تماس های ضروری",
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //                 fontFamily: "Sans",
                //                 fontSize: 12,
                //                 color: Colors.black,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Card(
                  color: Colors.blueGrey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  elevation: 7,
                  child: InkWell(
                    highlightColor: Colors.red,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SaveAccidentTime()));
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // width: 100,
                            // height: 100,
                            child: Icon(
                              Icons.insert_comment_outlined,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "گزارش فوری",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blueGrey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  elevation: 7,
                  child: InkWell(
                    highlightColor: Colors.red,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ComplementaryReportPage()));
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // width: 100,
                            // height: 100,
                            child: Icon(
                              Icons.add_comment_sharp,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "گزارش تکمیلی",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
          height: MediaQuery.of(context).size.height/2,
          child:ListView(
            physics: BouncingScrollPhysics(),
            children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Center(
              child: CardItem(
                onTap: () {
                  launch("tel://04133800568");
                },
                text: "اورژانس - 115",
                imagePath: "assets/images/Emergency.jpg",
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Center(
              child: CardItem(
                onTap: () {
                  launch("tel://04133800568");
                },
                text: "پلیس - 110",
                imagePath: "assets/images/police.jpg",
                fontSize: 16,
              ),
            ),
          ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                child: Center(
                  child: CardItem(
                    onTap: () {
                      launch("tel://04133800568");
                    },
                    text: "آتش نشانی - 125",
                    imagePath: "assets/images/fireStations.jpg",
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                child: Center(
                  child: CardItem(
                    onTap: () {
                      launch("tel://04133800568");
                    },
                    text: "هلال احمر - 112",
                    imagePath: "assets/images/helalAhmar.jpg",
                    fontSize: 16,
                  ),
                ),
              )
        ]),
        )]),
      bottomNavigationBar: TBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.insert_comment_outlined),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key,required this.onTap, this.imagePath,required this.text, required this.fontSize}) : super(key: key);
  final VoidCallback onTap;
  final String? imagePath;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(50),
        color: Colors.blueGrey[200],
      child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey[300],
                backgroundImage:(imagePath != null)? AssetImage(imagePath!):null,
                radius: 35.0,
              ),
              Expanded(
                child: SizedBox(
                  child: ListTile(
                    title: Text(
                      text,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "Sans",
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.call_outlined,color: Colors.black54,size: 30,),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
