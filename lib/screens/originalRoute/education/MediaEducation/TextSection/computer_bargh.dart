import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class ComputerBargh extends StatefulWidget {
  const ComputerBargh({Key? key}) : super(key: key);

  @override
  _ComputerBarghState createState() => _ComputerBarghState();
}

class _ComputerBarghState extends State<ComputerBargh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "کامپیوتر و سیستم برق خودرو",
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
                  final path = 'assets/AshnaiyBaBatry.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"آشنایی با انواع باتری خودرو");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
               // imagePath: "assets/images/paye1.jpg",
                text: "آشنایی با انواع باتری خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/BatrybeBatry.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"باتری به باتری");
                },
               // imagePath: "assets/images/paye2.jpg",
                text: "باتری به باتری",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/cheraBatryXali.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"چرا باتری خودرو خالی میشود");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "چرا باتری خودرو خالی میشود",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/TaavizBatry.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"چه زمانی باید باتری خودرو را تعویض کنیم");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "چه زمانی باید باتری خودرو را تعویض کنیم",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/Bargh1.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"سیستم برق1");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "سیستم برق1",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/Bargh2.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"سیستم برق 2");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "سیستم برق 2",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/fiuzCar.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"فیوز خودرو و عملکرد آن چیست");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "فیوز خودرو و عملکرد آن چیست",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/mogayeseBatry.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"مقایسه باتری اسیدی معمولی با سیلد AGM");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "مقایسه باتری اسیدی معمولی با سیلد AGM",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/xarbiRele.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"نشانه های خرابی رله استارت");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "نشانه های خرابی رله استارت",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
