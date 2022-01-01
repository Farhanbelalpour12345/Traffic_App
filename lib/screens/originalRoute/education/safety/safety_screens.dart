import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/education/safety/bazdid_splashly.dart';
import 'package:traffic_app/screens/originalRoute/education/safety/terafic_splashly.dart';
import 'package:traffic_app/size_config.dart';
import 'package:video_player/video_player.dart';


class SafetyScreens extends StatefulWidget {
  const SafetyScreens({Key? key}) : super(key: key);

  @override
  _SafetyScreensState createState() => _SafetyScreensState();
}

class _SafetyScreensState extends State<SafetyScreens> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ایمنی",
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
              final path = 'assets/Masdumiat.pdf';
              final file = await PDFApi.loadAsset(path);
              openPDF(context, file,"ارتقای ایمنی و پیشگیری از مصدومیت ها");
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => Screen1()));
            },
            imagePath: "assets/images/1.png",
            text: "ارتقای ایمنی و پیشگیری از مصدومیت ها",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: ()async {
              final path = 'assets/Xodro.pdf';
              final file = await PDFApi.loadAsset(path);
              openPDF(context, file,"استانداردهای ایمنی خودرو");
            },
            imagePath: "assets/images/2.jpg",
            text:
                "استانداردهای ایمنی خودرو و آشنایی با سیستم های بهبود ایمنی خودرو",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
              onTap: ()async {
                final path = 'assets/Rah.pdf';
                final file = await PDFApi.loadAsset(path);
                openPDF(context, file,"استانداردهای ایمنی راه");
              },
              imagePath: "assets/images/3.jpg",
              text: "استانداردهای ایمنی راه",
              fontSize: 16),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TeraficSplashly()));
            },
            imagePath: "assets/images/epid.jpg",
            text: "اپیدمیولوژی حوادث جاده ای",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: ()async {
              // final path = 'assets/Havades.pdf';
              // final file = await PDFApi.loadAsset(path);
              // openPDF(context, file,"پیشگیری از حوادث حمل و نقل در جوانان");
            },
            imagePath: "assets/images/Aberin_Imeni.jpg",
            text: "ایمنی عابرین پیاده",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: ()async {
              // final path = 'assets/OburMorur.pdf';
              // final file = await PDFApi.loadAsset(path);
              // openPDF(context, file,"قوانین و مقررات عبور و مرور");
            },
            imagePath: "assets/images/Motor_Imeni.jpg",
            text: "ایمنی موتورسواران",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: () {
              //Navigator.of(context)
             //     .push(MaterialPageRoute(builder: (context) => BazdidSplashly()));
            },
            imagePath: "assets/images/green.jpg",
            text: "رانندگی سبز",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: () {
              //Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => BazdidSplashly()));
            },
            imagePath: "assets/images/Eghtesad.jpg",
            text: "اقتصاد ترافیکی",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: () {
              //Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => BazdidSplashly()));
            },
            imagePath: "assets/images/kudakan.jpg",
            text: "کودکان و ترافیک",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: () {
              //Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => BazdidSplashly()));
            },
            imagePath: "assets/images/ravani.jpg",
            text: "ترافیک و سلامت جسمی و روانی",
            fontSize: 16,
          ),
          SizedBox(
            height: 30,
          ),
          CardItem(
            onTap: () {
              //Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => BazdidSplashly()));
            },
            imagePath: "assets/images/avvalie.jfif",
            text: "کمکهای اولیه در حوادث ترافیکی",
            fontSize: 16,
          ),
        ],
      ),
    );
  }
  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}

