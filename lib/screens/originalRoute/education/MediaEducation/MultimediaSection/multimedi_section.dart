import 'package:flutter/material.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/education/WebViewPage.dart';

class MultimediaSection extends StatefulWidget {
  const MultimediaSection({Key? key}) : super(key: key);

  @override
  _MultimediaSectionState createState() => _MultimediaSectionState();
}

class _MultimediaSectionState extends State<MultimediaSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "کلیپ های آموزشی",
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WebViewPage(
                          text: "انیمیشن نحوه کار استارت خودرو",
                          url: "https://www.aparat.com/v/EwFeB/")));
                },
                // imagePath: "assets/images/paye2.jpg",
                text: "1.	انیمیشن نحوه کار استارت خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                onTap: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WebViewPage(
                          text: "انیمیشن کارکرد موتور خودرو",
                          url: "https://www.aparat.com/v/GXc3p/")));
                },
                text: "2.	انیمیشن کارکرد موتور خودرو",
                fontSize: 16,
              ),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "انیمیشن نحوه کار سیستم فنی در خودرو",
                            url:
                                "https://www.aparat.com/v/lLVUN?playlist=468686")));
                  },
                  text: "3.	انیمیشن نحوه کار سیستم فنی در خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text:
                                "انیمیشن قطعات درون موتور خودرو و نحوه ی کار آن ها",
                            url: "https://www.aparat.com/v/ZgBWp/")));
                  },
                  text: "4.	انیمیشن قطعات درون موتور خودرو و نحوه ی کار آن ها",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "انیمیشن قطعات درون موتور خودرو",
                            url: "https://www.aparat.com/v/vkGTU/")));
                  },
                  text: "5.	انیمیشن قطعات درون موتور خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "موتور خودرو چگونه کار می کند؟",
                            url: "https://www.aparat.com/v/IpwMQ/")));
                  },
                  text: "6.	موتور خودرو چگونه کار می کند؟ ",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آشنایی با فیلترها و مایعات خودرو",
                            url:
                                "https://www.aparat.com/v/9Ni0o?playlist=32141")));
                  },
                  text: "7.	آشنایی با فیلترها و مایعات خودرو",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "سیستم روغن کاری موتور",
                            url:
                                "https://www.aparat.com/v/jmtiI?playlist=32141")));
                  },
                  text: "8.	سیستم روغن کاری موتور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آشنایی با تسمه های خودرو و تعویض آن ها",
                            url:
                                "https://www.aparat.com/v/N5YLc?playlist=32141")));
                  },
                  text: "9.	آشنایی با تسمه های خودرو و تعویض آن ها",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آموزش مکانیک خودرو : بستن موتور - قسمت 1",
                            url:
                                "https://www.aparat.com/v/xtzUD?playlist=32141")));
                  },
                  text: "10.	آموزش مکانیک خودرو : بستن موتور - قسمت 1",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آموزش مکانیک خودرو : بستن موتور - قسمت 2",
                            url:
                                "https://www.aparat.com/v/5ZrL8?playlist=32141")));
                  },
                  text: "11.	آموزش مکانیک خودرو : بستن موتور - قسمت 2",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آموزش مکانیک خودرو : بستن موتور - قسمت 3",
                            url:
                                "https://www.aparat.com/v/DfkCn?playlist=32141")));
                  },
                  text: "12.	آموزش مکانیک خودرو : بستن موتور - قسمت 3",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آموزش مکانیک خودرو : سیستم روغن کاری",
                            url:
                                "https://www.aparat.com/v/t1p6y?playlist=32141")));
                  },
                  text: "13.	آموزش مکانیک خودرو : سیستم روغن کاری",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text:
                                "آموزش مکانیک خودرو : تفکیک و بررسی قطعات موتور",
                            url: "https://www.aparat.com/v/2bJXM/")));
                  },
                  text: "14.	آموزش مکانیک خودرو : تفکیک و بررسی قطعات موتور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text:
                                "آموزش مکانیک خودرو : تفکیک و بازکردن متعلقات موتور",
                            url:
                                "https://www.aparat.com/v/ChYdX?playlist=32141")));
                  },
                  text:
                      "15.	آموزش مکانیک خودرو : تفکیک و بازکردن متعلقات موتور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text:
                                "آموزش مکانیک خودرو : عیب یابی سرسیلندر(سوپاپ ها و واشر)",
                            url:
                                "https://www.aparat.com/v/2gqmQ?playlist=32141")));
                  },
                  text:
                      "16.	آموزش مکانیک خودرو : عیب یابی سرسیلندر(سوپاپ ها و واشر)",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "ایرادات شایع و علائم سوختن واشر سرسیلندر",
                            url:
                                "https://www.aparat.com/v/85C94?playlist=32141")));
                  },
                  text: "17.	ایرادات شایع و علائم سوختن واشر سرسیلندر",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "پیستون ، شاتون و رینگ پیستون در موتور",
                            url:
                                "https://www.aparat.com/v/OBAe8?playlist=32141")));
                  },
                  text: "18.	پیستون ، شاتون و رینگ پیستون در موتور",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "آموزش آسان تعویض و نصب باتری ماشین",
                            url: "https://www.aparat.com/v/0CTF3/")));
                  },
                  text: "19.	آموزش آسان تعویض و نصب باتری ماشین",
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              CardItem(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            text: "تعویض تیغه برف پاکن",
                            url: "https://www.aparat.com/v/hVa73/")));
                  },
                  text: "20.	تعویض تیغه برف پاکن",
                  fontSize: 16),
            ]));
  }
}
