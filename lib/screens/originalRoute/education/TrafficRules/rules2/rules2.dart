import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';


class Rules2 extends StatefulWidget {
  const Rules2({Key? key}) : super(key: key);

  @override
  _Rules2State createState() => _Rules2State();
}

class _Rules2State extends State<Rules2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "پایه دوم",
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
                  final path =
                      'assets/Ghavanin1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل اول - قوانین و مقررات");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                imagePath: "assets/images/fasl1-2.png",
                text: "فصل اول - قوانین و مقررات",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/Imen.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل دوم - رانندگی ایمن");
                },
                imagePath: "assets/images/fasl2-2.png",
                text:
                "فصل دوم - رانندگی ایمن",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/XodroService.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"فصل سوم - آشنایی با خودرو");
                  },
                  imagePath: "assets/images/fasl3-2.png",
                  text: "فصل سوم - آشنایی با خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/KomakHaye.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل چهارم - آموزش کمک های اولیه");
                },
                imagePath: "assets/images/fasl4-2.png",
                text:
                "فصل چهارم - آموزش کمک های اولیه",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/Farhang1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"فصل پنجم - فرهنگ رانندگی");
                },
                imagePath: "assets/images/fasl5-2.png",
                text:
                "فصل پنجم - فرهنگ رانندگی",
                fontSize: 16,
              ),
            ]));
  }
  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
