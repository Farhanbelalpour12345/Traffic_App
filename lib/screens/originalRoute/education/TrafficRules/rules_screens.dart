import 'dart:io';

import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/pdf_viewer_page.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/education/TrafficRules/rules2/rules2.dart';
import 'package:traffic_app/screens/originalRoute/education/TrafficRules/rules3/rules3.dart';

class RulesScreens extends StatefulWidget {
  const RulesScreens({Key? key}) : super(key: key);

  @override
  _RulesScreensState createState() => _RulesScreensState();
}

class _RulesScreensState extends State<RulesScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "قوانین راهنمایی و رانندگی",
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
                      'assets/paye1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file,"کتاب آموزش رانندگی پایه یکم");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => Screen1()));
                },
                imagePath: "assets/images/paye1.jpg",
                text: "کتاب آموزش رانندگی پایه یکم",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rules2()));
                },
                imagePath: "assets/images/paye2.jpg",
                text:
                    "کتاب آموزش رانندگی پایه دوم",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rules3()));
                  },
                  imagePath: "assets/images/paye3.jpeg",
                  text: "کتاب آموزش رانندگی پایه سوم",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rules3()));
                  },
                  imagePath: "assets/images/ghavanin.jfif",
                  text: "قوانین و مقررات راهور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rules3()));
                  },
                  imagePath: "assets/images/taxallof.jfif",
                  text: "قانون رسیدگی به تخلفات",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rules3()));
                  },
                  imagePath: "assets/images/ghanun.jfif",
                  text: "مسائل حقوقی و موادی از قانون مجازات اسلامی",
                  fontSize: 16),
            ]));
  }
  void openPDF(BuildContext context, File file,String text) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file,text: text,)));
}
