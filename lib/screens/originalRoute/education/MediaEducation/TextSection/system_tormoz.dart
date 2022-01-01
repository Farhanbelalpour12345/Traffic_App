import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class SystemTormoz extends StatefulWidget {
  const SystemTormoz({Key? key}) : super(key: key);

  @override
  _SystemTormozState createState() => _SystemTormozState();
}

class _SystemTormozState extends State<SystemTormoz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "سیستم ترمز",
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
          ),
          elevation: 0.7,
        ),
        body: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10),
            children: [
              CardItem(
                onTap: () async {
                  final path = 'assets/ABS.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"سیستم ترمز ضد قفل");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                //imagePath: "assets/images/paye1.jpg",
                text: "سیستم ترمز ضد قفل یا ABS",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/bazdidSystemTormoz.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"نشانه هایی برای بازدید سیستم ترمز خودرو");
                },
               // imagePath: "assets/images/paye2.jpg",
                text: "نشانه هایی برای بازدید سیستم ترمز خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/systemTormoz.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"همه چیز درباره سیستم ترمز خودرو");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "همه چیز درباره سیستم ترمز خودرو",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
