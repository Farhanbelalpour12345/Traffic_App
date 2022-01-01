import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/components/default_button.dart';
import 'package:traffic_app/constants.dart';
import 'package:traffic_app/screens/Splash/Components/splash_content.dart';
import 'package:traffic_app/size_config.dart';

class TeraficSplashly extends StatefulWidget {
  const TeraficSplashly({Key? key}) : super(key: key);

  @override
  _TeraficSplashlyState createState() => _TeraficSplashlyState();
}

class _TeraficSplashlyState extends State<TeraficSplashly> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "0", "image": "assets/images/terafic1.png",},
    {"text": "1", "image": "assets/images/terafic2.png"},
    {"text": "2", "image": "assets/images/terafic3.png"},
    {"text": "3", "image": "assets/images/terafic4.png"},
    {"text": "4", "image": "assets/images/terafic5.png"},
    {"text": "5", "image": "assets/images/terafic6.png"},
    {"text": "6", "image": "assets/images/terafic7.png"},
    {"text": "7", "image": "assets/images/terafic8.png"},
    {"text": "8", "image": "assets/images/terafic9.png"},
    {"text": "9", "image": "assets/images/terafic10.png"},
    {"text": "10", "image": "assets/images/terafic11.png"},
    {"text": "11", "image": "assets/images/terafic12.png"},
    {"text": "12", "image": "assets/images/terafic13.png"},
    {"text": "13", "image": "assets/images/terafic13.png"},
    {"text": "14", "image": "assets/images/terafic14.png"},
    {"text": "15", "image": "assets/images/terafic15.png"},
    {"text": "16", "image": "assets/images/terafic16.png"},
    {"text": "17", "image": "assets/images/terafic17.png"},
    {"text": "18", "image": "assets/images/terafic18.png"},
    {"text": "19", "image": "assets/images/terafic19.png"},
    {"text": "20", "image": "assets/images/terafic20.png"},
    {"text": "21", "image": "assets/images/terafic21.png"},
    {"text": "22", "image": "assets/images/terafic22.png"},
    {"text": "23", "image": "", "video": "videos/Media1.mp4"},
    {"text": "24", "image": "assets/images/terafic23.png"},
    {"text": "25", "image": "assets/images/terafic24.png"},
    {"text": "26", "image": "", "video": "videos/Media2.mp4"},
    {"text": "27", "image": "assets/images/terafic25.png"},
    {"text": "28", "image": "assets/images/terafic26.png"},
    {"text": "29", "image": "assets/images/terafic27.png"},
    {"text": "30", "image": "assets/images/terafic28.png"},
    {"text": "31", "image": "assets/images/terafic29.png"},
    {"text": "32", "image": "assets/images/terafic30.png"},
    {"text": "33", "image": "assets/images/terafic31.png"},
    {"text": "34", "image": "assets/images/terafic32.png"},
    {"text": "35", "image": "assets/images/terafic33.png"},
    {"text": "36", "image": "assets/images/terafic34.png"},
    {"text": "37", "image": "assets/images/terafic35.png"},
    {"text": "38", "image": "assets/images/terafic36.png"},
    {"text": "39", "image": "assets/images/terafic37.png"},
    {"text": "40", "image": "assets/images/terafic38.png"},
    {"text": "41", "image": "assets/images/terafic39.png"},
    {"text": "42", "image": "assets/images/terafic40.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        appBar: AppBar(
          title: Text('آموزش پیشگیری از حوادث ترافیکی'),
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                      video: splashData[index]['video'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 9 : 3,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blueGrey : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
