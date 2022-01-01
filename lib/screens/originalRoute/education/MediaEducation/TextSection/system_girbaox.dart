import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class SystemGirbaox extends StatefulWidget {
  const SystemGirbaox({Key? key}) : super(key: key);

  @override
  _SystemGirbaoxState createState() => _SystemGirbaoxState();
}

class _SystemGirbaoxState extends State<SystemGirbaox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "سیستم گیربکس و جعبه دنده",
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
                  final path = 'assets/gearboaxAuto.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"گیربکس اتوماتیک یا جعبه دنده خودکار");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                //imagePath: "assets/images/paye1.jpg",
                text: "گیربکس اتوماتیک یا جعبه دنده خودکار",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/gearboaxGheirAuto.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"گیربکس غیر اتوماتیک و جعبه دنده دستی");
                },
               // imagePath: "assets/images/paye2.jpg",
                text: "گیربکس غیر اتوماتیک و جعبه دنده دستی",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/Kelagh.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"کلاچ چیست و چگونه عمل میکند");
                  },
                //  imagePath: "assets/images/paye3.jpeg",
                  text: "کلاچ چیست و چگونه عمل میکند",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/TaavizDandeh.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"اصول صحیح تعویض دنده خودرو");
                  },
                 // imagePath: "assets/images/paye3.jpeg",
                  text: "اصول صحیح تعویض دنده خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/PedalXodro.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"آشنایی با پدال های خودرو");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "آشنایی با پدال های خودرو",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
