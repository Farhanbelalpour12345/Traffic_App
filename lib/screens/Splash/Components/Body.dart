import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/screens/Splash/SplashForFirstPage/SplashFirstPage.dart';

import 'package:traffic_app/size_config.dart';
import 'package:traffic_app/constants.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title" : "بخش گزارش و ثبت تصادف",
      "text": "برای گزارش و ثبت تصادف، می توانید با اورژانس و پلیس ۱۱۰ تماس بگیرید و جهت ارائه اطلاعات بیشتر در مورد تصادف تا رسیدن اورژانس، می توانید فرم های گزارش را تکمیل کنید.",
      "image": "assets/images/s1.jpeg"
    },
    {
      "title" : "بخش عملکرد، تعمیر و نگهداری خودرو",
      "text": "می توانید آموزشهای لازم در مورد قوانین و مقررات رانندگی، اطلاعات خودرویی و اصول نگهداری از خودرو را در این بخش مشاهده کنید تا سفری ایمن و بدون حادثه داشته باشید.",
      "image": "assets/images/s3.jpeg"
    },
    {
      "title" : "بخش مدیریت حواس پرتی ناشی از موبایل",
      "text": "جهت مدیریت حواس پرتی ناشی از استفاده از تلفن همراه در هنگام رانندگی، تنظیمات مربوطه را در این بخش اعمال کنید.",
      "image": "assets/images/s2.jpeg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashFirstPage(
                  title: splashData[index]['title'],
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
                    Spacer(flex: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 1),
                    DefaultButton(
                      text: "ادامه",
                      press: () async {
                           Get.toNamed("/sign_up");
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blueGrey : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
