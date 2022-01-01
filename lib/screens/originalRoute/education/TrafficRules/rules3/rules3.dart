import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';


class Rules3 extends StatefulWidget {
  const Rules3({Key? key}) : super(key: key);

  @override
  _Rules3State createState() => _Rules3State();
}

class _Rules3State extends State<Rules3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "پایه سوم",
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
                  final path = 'assets/Ghavanin2.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل اول - قوانین و مقررات");
                },
                imagePath: "assets/images/fasl1-3.png",
                text:
                "قوانین و مقررات",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/Imen2.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل دوم - رانندگی ایمن");
                },
                imagePath: "assets/images/fasl2-3.png",
                text:
                "رانندگی ایمن",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/systemFanni.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"فصل سوم - آشنایی با سیستم های فنی و سرویس خودرو");
                  },
                  imagePath: "assets/images/fasl3-3.png",
                  text: "آشنایی با سیستم های فنی و سرویس خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),

              CardItem(
                onTap: () async {
                  final path = 'assets/FarhangRanandeghi.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل چهارم - فرهنگ رانندگی");
                },
                imagePath: "assets/images/fasl4-3.png",
                text:
                "فرهنگ رانندگی",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/Emdad.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل پنجم - امداد و نجات ");
                },
                imagePath: "assets/images/fasl5-3.png",
                text:
                "امداد و نجات",
                fontSize: 16,
              ),
            ]));
  }
  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
