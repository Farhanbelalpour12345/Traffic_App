import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/ashnaiy_ba_xodro.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/computer_bargh.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/moraghebat_xodro.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/pishraneh.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/system_farman.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/system_girbaox.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/system_taaligh.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/system_tormoz.dart';

class TextSection extends StatefulWidget {
  const TextSection({Key? key}) : super(key: key);

  @override
  _TextSectionState createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "مباحث آموزشی متنی",
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
          ),
          elevation: 0.7,
        ),
        body: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10),
            children: [
              CardItem(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AshnaiyBaXodro()));
                },
                imagePath: "assets/images/xodro.jpg",
                text: "آشنایی با قطعات خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MoraghebatXodro()));
                },
                imagePath: "assets/images/car_care.png",
                text: "مراقبت از خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ComputerBargh()));
                  },
                  imagePath: "assets/images/computerBargh.jpg",
                  text: "کامپیوتر و سیستم برق خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pishraneh()));
                  },
                  imagePath: "assets/images/xonak.jpg",
                  text: "پیشرانه و سیستم خنک کاری",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SystemTormoz()));
                  },
                  imagePath: "assets/images/tormoz.jpg",
                  text: "سیستم ترمز",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SystemFarman()));
                  },
                  imagePath: "assets/images/farman.jpeg",
                  text: "سیستم فرمان",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SystemGirbaox()));
                  },
                  imagePath: "assets/images/gearboxes.jpg",
                  text: "سیستم گیربکس و جعبه دنده",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SystemTaaligh()));
                  },
                  imagePath: "assets/images/taaligh.jpeg",
                  text: "سیستم تعلیق، دیفرانسیل و لاستیکها",
                  fontSize: 16),
            ]));
  }
}
