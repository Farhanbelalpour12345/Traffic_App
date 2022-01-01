import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class Pishraneh extends StatefulWidget {
  const Pishraneh({Key? key}) : super(key: key);

  @override
  _PishranehState createState() => _PishranehState();
}

class _PishranehState extends State<Pishraneh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "پیشرانه و سیستم خنک کاری",
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
                  final path = 'assets/systemXonakKari.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"سیستم خنک کاری خودرو چگونه کار می‌کند");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
              //  imagePath: "assets/images/paye1.jpg",
                text: "سیستم خنک کاری خودرو چگونه کار می‌کند؟",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/TasmehTime.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"تسمه تایم و وظایف آن");
                },
               // imagePath: "assets/images/paye2.jpg",
                text: "تسمه تایم و وظایف آن",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/systemPasheshSuxt.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"سیستم پاشش سوخت و انژکتور");
                  },
               //   imagePath: "assets/images/paye3.jpeg",
                  text: "سیستم پاشش سوخت و انژکتور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/systemTahvie.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"سیستم تهویه و کولر خودرو چگونه کار میکند");
                  },
                //  imagePath: "assets/images/paye3.jpeg",
                  text: "سیستم تهویه و کولر خودرو چگونه کار میکند",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/systemRoghanKari.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"سیستم روغن کاری خودرو چگونه کار میکند");
                  },
               //   imagePath: "assets/images/paye3.jpeg",
                  text: "سیستم روغن کاری خودرو چگونه کار میکند",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/alayemXarabiDama.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"علائم خرابی سنسور دمای خنک کننده چیست");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "علائم خرابی سنسور دمای خنک کننده چیست",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/motorAndPishraneh.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"نحوه عملکرد موتور یا پیشرانه احتراق داخلی");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "نحوه عملکرد موتور یا پیشرانه احتراق داخلی",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/xarabiTasme.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"نشانه های خرابی تسمه دینام");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "نشانه های خرابی تسمه دینام",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/vazayefRoghan.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"وظایف روغن موتور");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "وظایف روغن موتور",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
