import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class SystemTaaligh extends StatefulWidget {
  const SystemTaaligh({Key? key}) : super(key: key);

  @override
  _SystemTaalighState createState() => _SystemTaalighState();
}

class _SystemTaalighState extends State<SystemTaaligh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "سیستم تعلیق، دیفرانسیل و لاستیکها",
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
                  final path = 'assets/TaalighAndFanar.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"سیستم تعلیق و فنربندی");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
               // imagePath: "assets/images/paye1.jpg",
                text: "سیستم تعلیق و فنربندی",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/HowToWorkDifransiel.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"دیفرانسیل چگونه کار می کند");
                },
               // imagePath: "assets/images/paye2.jpg",
                text: "دیفرانسیل چگونه کار می کند",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/lasticXodro.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"همه چیز درباره لاستیک خودرو");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "همه چیز درباره لاستیک خودرو",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text)));
}
