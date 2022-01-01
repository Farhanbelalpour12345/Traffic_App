import 'package:flutter/material.dart';
import 'package:traffic_app/constants.dart';
import 'package:traffic_app/screens/Splash/Components/splash_content.dart';
import 'package:traffic_app/size_config.dart';


class BazdidSplashly extends StatefulWidget {
  const BazdidSplashly({Key? key}) : super(key: key);

  @override
  _BazdidSplashlyState createState() => _BazdidSplashlyState();
}

class _BazdidSplashlyState extends State<BazdidSplashly> {

  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "0", "image": "assets/images/bazdid1.png",},
    {"text": "1", "image": "assets/images/bazdid2.png"},
    {"text": "2", "image": "assets/images/bazdid3.png"},
    {"text": "3", "image": "assets/images/bazdid4.png"},
    {"text": "4", "image": "assets/images/bazdid5.png"},
    {"text": "5", "image": "assets/images/bazdid6.png"},
    {"text": "6", "image": "assets/images/bazdid7.png"},
    {"text": "7", "image": "assets/images/bazdid8.png"},
    {"text": "8", "image": "assets/images/bazdid9.png"},
    {"text": "9", "image": "assets/images/bazdid10.png"},
    {"text": "10", "image": "assets/images/bazdid11.png"},
    {"text": "11", "image": "assets/images/bazdid12.png"},
    {"text": "12", "image": "assets/images/bazdid13.png"},
    {"text": "13", "image": "assets/images/bazdid13.png"},
    {"text": "14", "image": "assets/images/bazdid14.png"},
    {"text": "15", "image": "assets/images/bazdid15.png"},
    {"text": "16", "image": "assets/images/bazdid16.png"},
    {"text": "17", "image": "assets/images/bazdid17.png"},
    {"text": "18", "image": "assets/images/bazdid18.png"},
    {"text": "19", "image": "assets/images/bazdid19.png"},
    {"text": "20", "image": "assets/images/bazdid20.png"},
    {"text": "21", "image": "assets/images/bazdid21.png"},
    {"text": "22", "image": "assets/images/bazdid22.png"},
    {"text": "23", "image": "assets/images/bazdid23.png"},
    {"text": "24", "image": "assets/images/bazdid24.png"},
    {"text": "25", "image": "assets/images/bazdid25.png"},
    {"text": "26", "image": "assets/images/bazdid26.png"},
    {"text": "27", "image": "assets/images/bazdid27.png"},
    {"text": "28", "image": "assets/images/bazdid28.png"},
    {"text": "29", "image": "assets/images/bazdid29.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        appBar: AppBar(
          title: Text('بازدید و کنترل ایمنی خودرو قبل و در حین مسافرت'),
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
