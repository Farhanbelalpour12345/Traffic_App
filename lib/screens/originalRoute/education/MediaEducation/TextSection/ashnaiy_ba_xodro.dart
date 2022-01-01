import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class AshnaiyBaXodro extends StatefulWidget {
  const AshnaiyBaXodro({Key? key}) : super(key: key);

  @override
  _AshnaiyBaXodroState createState() => _AshnaiyBaXodroState();
}

class _AshnaiyBaXodroState extends State<AshnaiyBaXodro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "آشنایی با قطعات خودرو",
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
                  final path = 'assets/ghataat1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"مهم ترین قطعات خودرو1");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                //imagePath: "assets/images/paye1.jpg",
                text: "مهم ترین قطعات خودرو 1",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/ghataat2.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"مهم ترین قطعات خودرو2");
                },
                //imagePath: "assets/images/paye2.jpg",
                text: "مهم ترین قطعات خودرو 2",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/ghataat3.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"مهم ترین قطعات خودرو3");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "مهم ترین قطعات خودرو 3",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
