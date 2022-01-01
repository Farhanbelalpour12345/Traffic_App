import 'package:flutter/material.dart';
import 'package:traffic_app/pdf_api.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/MultimediaSection/multimedi_section.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/TextSection/text_section.dart';

class MediaEducationScreens extends StatefulWidget {
  const MediaEducationScreens({Key? key}) : super(key: key);

  @override
  _MediaEducationScreensState createState() => _MediaEducationScreensState();
}

class _MediaEducationScreensState extends State<MediaEducationScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "آشنایی با خودرو و عملکرد آن",
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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MultimediaSection()));
                },
                imagePath: "assets/images/clipTotal.png",
                text: "کلیپ های آموزشی",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TextSection()));
                },
                imagePath: "assets/images/matni.jpg",
                text:
                "مباحث آموزشی متنی",
                fontSize: 16,
              ),
            ]));
  }
}
