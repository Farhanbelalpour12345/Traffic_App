import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';

class MoraghebatXodro extends StatefulWidget {
  const MoraghebatXodro({Key? key}) : super(key: key);

  @override
  _MoraghebatXodroState createState() => _MoraghebatXodroState();
}

class _MoraghebatXodroState extends State<MoraghebatXodro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "مراقبت از خودرو",
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
                  final path = 'assets/tosiyeKarbordy.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"توصیه کاربردی، برای شست‌وشوی خودرو");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                //imagePath: "assets/images/paye1.jpg",
                text: "توصیه کاربردی، برای شست‌وشوی خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  final path = 'assets/checkList.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"چک لیست هفتگی برای نگهداری از خودرو");
                },
                //imagePath: "assets/images/paye2.jpg",
                text: "چک لیست هفتگی برای نگهداری از خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/moraghebatAzXodro.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"راهنمای جامع مراقبت از خودرو");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "راهنمای جامع مراقبت از خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    final path = 'assets/shasy.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file,"شاسی و بدنه");
                  },
                  //imagePath: "assets/images/paye3.jpeg",
                  text: "شاسی و بدنه",
                  fontSize: 16),
            ]));
  }

  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
