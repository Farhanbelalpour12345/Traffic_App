import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class SystemFarman extends StatefulWidget {
  const SystemFarman({Key? key}) : super(key: key);

  @override
  _SystemFarmanState createState() => _SystemFarmanState();
}

class _SystemFarmanState extends State<SystemFarman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "سیستم فرمان",
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
                  final path = 'assets/BargashtPaziry.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"برگشت ‌پذیری خودکار فرمان");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                //imagePath: "assets/images/paye1.jpg",
                text: "برگشت ‌پذیری خودکار فرمان",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/KamFarmanyPish.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"تفاوت بین کم فرمانی و بیش فرمانی");
                },
              //  imagePath: "assets/images/paye2.jpg",
                text: "تفاوت بین کم فرمانی و بیش فرمانی",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/JaabeFarman.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"جعبه فرمان خودرو چیست");
                  },
               //   imagePath: "assets/images/paye3.jpeg",
                  text: "جعبه فرمان خودرو چیست",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/LarzeshFarman.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"لرزش فرمان هنگام ترمزگیری");
                  },
                //  imagePath: "assets/images/paye3.jpeg",
                  text: "لرزش فرمان هنگام ترمزگیری",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/SystemBarghiBaHydro.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"مقایسه‌ی سیستم فرمان برقی با هیدرولیک");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "مقایسه‌ی سیستم فرمان برقی با هیدرولیک",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
