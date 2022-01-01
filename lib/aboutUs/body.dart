import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          height: size.height * 0.3,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.25,
                child: Center(
                  child: Column(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/icon.jpg"),
                      radius: 55,
                      backgroundColor: Colors.blueGrey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'برنامه ترافیکی',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Sans",
                      ),
                    )
                  ]),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Text(
          'طراحی و توسعه:',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans", fontSize: 13, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'تیم پژوهشی',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans", fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'منابع:',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans", fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Text(
          'احمدی، علیرضا. کمکهای اولیه و خدمات پزشکی در حوادث ترافیکی در: ایمنی و ترافیک/ صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n اسماعیلی، علیرضا؛ اکبری، محمد علی. استانداردهای ایمنی خودرو و آشنایی با سیستمهای بهبود ایمنی خودرو در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n خراسانی زواره، داود. ارتقای ایمنی و پیشگیری از مصدومیتها در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n بصیرت، بهزاد. استانداردهای ایمنی راه در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n بی نیاز، یعقوب. عیب‌یابی خودرو به روش گام به گام. تهران: موسسه فرهنگی هنری دیباگران. 1397.\n پویاگهر، محمد مهدی. خودآموز فنی خودرو. تهران: انتشارات نظری. 1394.\n پیری، زکیه؛ گلستانی، مینا؛ نوالی، محمد امیر. مباحث خاص در ایمنی ترافیکی در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n حمزه ای سزاوار، علی. بدانیم و برانیم. تهران: آفتاب گیتی. 1397.\n دلیرراد، محمد. ایمنی ترافیکی و سلامت جسمی و روانی در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n رضاپور شاه کلاهی، فروزان. ایمنی عابرین پیاده در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n سوری، حمید. اپیدمیولوژی حوادث جاده ای در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n شاهسوندی، محسن. عیب‌یابی خودروهای انژکتوری به همراه دستورالعمل رفع عیب. 1397.\n صادقی بازرگانی، همایون. ایمنی موتورسواران در: ایمنی و ترافیک. صادقی بازرگانی، همایون. تبریز: شیردل، 1395.\n مطلق، محمد اسماعیل؛ مصطفوی، فیروزه؛ پیرزاده، آسیه؛ جلیلیان، محسن. پیشگیری از حوادث حمل و نقل در جوانان. اصفهان: سمند. 1395.\n سایت پلیس راهور (https://rahvar120.ir)\n بخش مقالات خودرویی وبسایت زومیت (www.zoomit.ir).\n فیلم های آموزشی در ابطه با خودرو (www.aparat.com).\n ***مسئولیت محتوای ارائه شده در سایتهای فوق بر عهده خود سایت است.***',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.8),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'توضیحات:',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans", fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Text(
          'این برنامه حاصل پایان نامه دکتری در رشته مدیریت اطلاعات سلامت گروه فناوری اطلاعات سلامت دانشگاه علوم پزشکی تبریز با کد کمیته اخلاق IR.TBZMED.REC.1398.426 است.',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.8),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'آدرس ایمیل تیم پژوهشی:',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans", fontSize: 15, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Leila.kalankesh@gmail.com \n homayoun.sadeghi@gmail.com  \n  mfeizi@tabrizu.ac.ir \n Haghayari97@gmail.com \n belalpourm@gmail.com',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.7),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
