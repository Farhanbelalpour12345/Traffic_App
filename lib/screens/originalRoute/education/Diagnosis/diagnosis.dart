import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({Key? key}) : super(key: key);

  @override
  _DiagnosisState createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
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
          "عیب یابی",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      body:  ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 5,),
          Center(child: Text("نوع عیب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Sans"),)),
          SizedBox(height: 10,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "روشن نشدن خودرو",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سوئیچ اینرسی: ممکن است دراثر ضربه شدید به خودرو (مانند دست انداز) عمل کرده باشد \n سنسور دورموتور ممکن است خراب باشد یا براده به نوک آن چسبیده باشد \n رله اصلی دوبل: دراین حالت چراغ چک پشت آمپر نداریم ولی اگر رله بنزین ایراد داشته باشد چراغ چک داریم \n گیرکردن شافت استپر موتور \n با دیاگ چک شود دمای آب چند درجه است (مثلاً اگر 40- یا 215+ را نشان دهد) فشنگی آب یا سیم کشی ایراد دارد \n در خودروهای پیکان وRD سنسورMAP \n باتری \n قطع شدن تغذیهECU: دراین حالت نیز چراغ چک پشت آمپر خاموش است . باتوجه به نقشه ، مسیر ولتاژ 12 ولت و سوئیچ باز را چک کنید \n خرابیECU: به عنوان مثال اگر چراغ چک نداشته باشیم ممکن است آی سی رگولاتور یا رله دبل خراب باشد",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("روشن نشدن خودرو",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهنگام صبح با استارت زیاد روشن می شود اگر زیاد گاز داده شود خاموش می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور مپMAP ",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهنگام صبح با استارت زیاد روشن می شود اگر زیاد گاز داده شود خاموش می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهنگام صبح با استارت اول روشن نمی شود اما دربقیه اوقات فوراً روشن می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "فشنگی یا سنسور دمای آب",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهنگام صبح با استارت اول روشن نمی شود اما دربقیه اوقات فوراً روشن می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهوای سرد روشن نمی شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "فشنگی یا سنسور دمای آب",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهوای سرد روشن نمی شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهوای سرد مثلاً صبح ها به محض روشن شدن خاموش می شود به معنای دیگر ساسات نمی کند و باید پا روی پدال نگه داشته شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "استپر موتور (ممکن است نوک آن کثیف شده باشد یا شفت آن براثر انبساط و انقباض گیر کرده باشد (استپر را تمیزکرده و چند قطره به انتهای شفت روغن بزنید)\n گرمکن هوزینگ دریچه گاز \n سنسور دمای آب",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهوای سرد مثلاً صبح ها به محض روشن شدن خاموش می شود به معنای دیگر ساسات نمی کند و باید پا روی پدال نگه داشته شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو به صورت نیمه کامل روشن می شود و با رها کردن سوئیچ دوباره خاموش می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "خراب شدن و نیم سوز شدن کویل",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو به صورت نیمه کامل روشن می شود و با رها کردن سوئیچ دوباره خاموش می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "روشن نشدن خودرو درهنگام استارت گرم (یعنی 20 تا 30 دقیقه بعد از خاموش شدن موتور درتابستان)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دور موتور ایراد دارد (این سنسور دراثر گرما زیاد کیفیت خود را از دست داده است) یا براده های نوک آن تمیز شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("روشن نشدن خودرو درهنگام استارت گرم (یعنی 20 تا 30 دقیقه بعد از خاموش شدن موتور درتابستان)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "بد روشن شدن خودرو در آب و هوای سرد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دمای آب",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("بد روشن شدن خودرو در آب و هوای سرد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهنگام روشن شدن دچار خام سوزی می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور اکسیژن خراب است (گرم کن آن کار نمیکند)",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهنگام روشن شدن دچار خام سوزی می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خاموش شدن خودرو دردورآرام",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "گیرکردن شافت استپر موتور \n دریچه گاز",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خاموش شدن خودرو دردورآرام",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خاموش شدن خودرو دراثر ضربه مانند دست انداز یا تصادف",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سوئیچ اینرسی عمل کرده است",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خاموش شدن خودرو دراثر ضربه مانند دست انداز یا تصادف",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "با ایجاد بار اضافی دردور آرام، موتور دچار لرزش یا خاموش می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "استپر موتور \n اگر دیاگ خطای استپر دهد و با تعویض استپر درست نشد بایدECU را باز کرده و آی سی مربوط به استپر را تعویض کنید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("با ایجاد بار اضافی دردور آرام، موتور دچار لرزش یا خاموش می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "با چرخاندن فرمان هیدرولیک دردور آرام، موتور دچار لرزش یا خاموش می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور فشار فرمان هیدرولیک \n استپر موتور \n اگردیاگ خطای استپر دهد و با تعویض استپر درست نشد بایدECU را بازکرده و آی سی مربوط به استپر را تعویض کنید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("با چرخاندن فرمان هیدرولیک دردور آرام، موتور دچار لرزش یا خاموش می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),

          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خاموش شدن موتور دربعضی اوقات هنگام کاهش سرعت و زمانیکه دنده درگیراست ( به خصوص پشت چراغ قرمز)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور سرعت خودرو ( فیوز و سیم کشی چک شود)",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خاموش شدن موتور دربعضی اوقات هنگام کاهش سرعت و زمانیکه دنده درگیراست ( به خصوص پشت چراغ قرمز)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خاموش شدن (کپ کردن) ماشین به خصوص درزمان رها کردن ناگهانی پدال",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "خرابی استپر موتور \n اگر دیاگ خطای استپر دهد و با تعویض استپر درست نشد بایدECU را بازکرده و آی سی مربوط به استپر را تعویض کنید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خاموش شدن (کپ کردن) ماشین به خصوص درزمان رها کردن ناگهانی پدال",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "درهنگام خاموش کردن، موتور لرزش دارد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور مپMAP",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("درهنگام خاموش کردن، موتور لرزش دارد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ایجاد حالتCUT OFF  قبل از رسیدن دور موتور به رد لاین (مثلاً دور موتور به 3000 نمیرسد)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دور موتور \n ممکن است فاصله بین سنسور دور موتور با دنده کم شده باشد (با یک واشر نسوز 1 یا 2 میل بین سنسور و بدنه فاصله را زیاد کنید) \n ECU موتور: مسیر منفی دریچه گاز را با یک سیم نازک اتصال کوتاه کنید یا مسیرهای جریان روی برد را بازبینی کرده تا قطعی بوجود نیامده باشد. درغیراینصورت ایپرام برنامه ریزی شود یا آیسی دور موتور و دریچه گاز تعویض شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ایجاد حالتCUT OFF  قبل از رسیدن دور موتور به رد لاین (مثلاً دور موتور به 3000 نمیرسد)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ثابت ماندن یا حرکت نکردن دورسنج دریک دورموتور مشخص (یا شلاق زدن)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دور موتور",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ثابت ماندن یا حرکت نکردن دورسنج دریک دورموتور مشخص (یا شلاق زدن)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دودکردن خودرو به طور محسوس در زمانی که موتور خنک می باشد یا بعد از گرم شدن موتور (معمولاً دریکی از حالات)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دمای آب \n برنامه ریزی ایپرامECU",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دودکردن خودرو به طور محسوس در زمانی که موتور خنک می باشد یا بعد از گرم شدن موتور (معمولاً دریکی از حالات)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دود کردن موتور درحالت عادی (دود سیاه)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "گرفتگی انژکتورها \n نشتی از ناحیه اورینگ انژکتور \n برنامه ریزی ایپرامECU",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دود کردن موتور درحالت عادی (دود سیاه)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دود کردن موتور گاهی اوقات که درهنگام گازدادن کم یا زیاد می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور سرعت خودرو \n گرفتگی و کثیفی فیلتر بنزین",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دود کردن موتور گاهی اوقات که درهنگام گازدادن کم یا زیاد می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دود کردن موتور در سربالایی ها و هنگام شتاب گیری",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "پمپ بنزین",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دود کردن موتور در سربالایی ها و هنگام شتاب گیری",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درسربالایی ها شتاب لازم ندارد ولی به سمت سرپایینی بدون مشکل است",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور مپ (منیفولد) \n اگر موتور تعمیر شده است تسمه تایم چک شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درسربالایی ها شتاب لازم ندارد ولی به سمت سرپایینی بدون مشکل است",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "در سربالایی و هنگام دنده معکوس خودرو ریپ می زند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور سرعت خودرو",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("در سربالایی و هنگام دنده معکوس خودرو ریپ می زند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "درشتاب گیری موتور مکث دارد (سکته میزند)",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "فیلتر بنزین خراب است \n شمع ها و وایر \n برای 206 بهتر است از شمع سوزنی اصلی استفاده شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("درشتاب گیری موتور مکث دارد (سکته میزند)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو درهنگام گازخوردن یا برداشتن پدال گاز دچار دور موتور نامنظم (ریپ) می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور مپMAP",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو درهنگام گازخوردن یا برداشتن پدال گاز دچار دور موتور نامنظم (ریپ) می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "موتور کشش ندارد و مصرف بنزین افزایش یافته است",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "خراب شدن و نیم سوز شدن کویل \n کثیف بودن فیلتر هوا \n شمع و وایرها (برای 206 بهتراست از شمع سوزنی اصلی استفاده شود)",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("موتور کشش ندارد و مصرف بنزین افزایش یافته است",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "موتور کشش ندارد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "نشتی یا گرفتگی انژکتورها \n به هم ریختن برنامه ایپرامECU",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("موتور کشش ندارد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "کاهش دور موتور به مقدار قابل توجه درزمان گرفتن کولر در دور آرام خودرو",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "خرابی استپر موتور",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("کاهش دور موتور به مقدار قابل توجه درزمان گرفتن کولر در دور آرام خودرو",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "گازخوردن بی دلیل پس از روشن شدن موتورخودرو",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "خرابی استپر موتور",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("گازخوردن بی دلیل پس از روشن شدن موتورخودرو",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو بی دلیل گاز می خورد و یا دور موتور بالا می رود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "استپر موتور \n سنسور و موتور دریچه گاز (درصورت وجود) \n مپ سنسور (سنسور فشار هوای ورودی) \n ایراد سیم و پدال و دریچه گاز \n سنسور دور موتور",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو بی دلیل گاز می خورد و یا دور موتور بالا می رود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "نوسان دور موتور در دور آرام و کاهش افزایش دورموتور",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "ترمینالهای سوکت دریچه گاز ممکن است سولفاته شده باشند \n خرابی استپر موتور \n نشتی هوا از اتصالات مجموعه هواکش تا دریچه \n تنظیم نبودن پتانسیومترCO در پیکان وRD \n کثیف شدن نوک سنسور دور موتور \n انژکتورها",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("نوسان دور موتور در دور آرام و کاهش افزایش دورموتور",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خودرو در دور آرام بد کارمی کند و مصرف سوخت زیاد است",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دمای آب \n ECU موتور (ایپرام یا فلش برنامه ریزی شود)",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خودرو در دور آرام بد کارمی کند و مصرف سوخت زیاد است",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "نوسان دورموتور دردورهای بالا",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "کثیف بودن یا آب خوردگی سنسور دریچه گاز",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("نوسان دورموتور دردورهای بالا",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "هنگامی که خودرو سرد است دورموتور در حد نرمال و درموقع گرم بودن دورموتور تا حالت CUT OFF بالا می رود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دریچه گاز",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("هنگامی که خودرو سرد است دورموتور در حد نرمال و درموقع گرم بودن دورموتور تا حالت CUT OFF بالا می رود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "بالا نرفتن دورموتور از یک حد خاص",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "پتانسیومتردریچه گاز",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("بالا نرفتن دورموتور از یک حد خاص",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "با گازدادن خودرو خاموش می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "پتانسیومتر دریچه گاز \n ممکن است پمپ بنزین ضعیف باشد و فشار سوخت کم شده باشد",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("با گازدادن خودرو خاموش می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دمای آب و آمپر آب بالا می رود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "شمع ها چک شود \n ترموستات کنترل شود \n سنسور دمای آب \n ECU موتور ( آی سی مربوط دمای آب ممکن است خراب باشد)",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دمای آب و آمپر آب بالا می رود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "فن با روشن شدن موتور یکسره کارمی کند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "رله فن چک شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("فن با روشن شدن موتور یکسره کارمی کند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "دمای آب و آمپر آب بالا می رود و صدای قل قل در هنگام خاموش کردن به گوش می رسد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "واشر سرسیلندر سوخته است \n سنسور دمای آب \n آی سی فن یا دمای آبECU تعویض شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("دمای آب و آمپر آب بالا می رود و صدای قل قل در هنگام خاموش کردن به گوش می رسد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "درمسافت های به طور پیوسته پرگاز موتور سکته (مکث) دارد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "فیلتر بنزین خراب است \n درخودروهای دوگانه درهر دو حالت اگر این اتفاق بیفتد معمولاً به سیم کشی کوئل مربوط می شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("درمسافت های به طور پیوسته پرگاز موتور سکته (مکث) دارد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "شمع دوده سیاه خشک می بندد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور دمای آب",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("شمع دوده سیاه خشک می بندد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "حافظه موقت دائماً پاک می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "رله دوبل ایراد دارد",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("حافظه موقت دائماً پاک می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "اگر ماشین موقع شروع به گازدادن یا برداشتن پا از روی پدال گاز در دنده 1 یا 2 ماشین تقه بزند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور کیلومتر ایراد دارد یا قطع است",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("اگر ماشین موقع شروع به گازدادن یا برداشتن پا از روی پدال گاز در دنده 1 یا 2 ماشین تقه بزند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "خاموش شدن ماشین درمواقعی که درجا کار می کند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور کیلومتر ایراد دارد یا قطع است",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("خاموش شدن ماشین درمواقعی که درجا کار می کند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "افزایش مصرف سوخت و بدکارکردن خودرو به خصوص در دورهای بالا",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "سنسور کیلومتر ایراد دارد یا قطع است",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("افزایش مصرف سوخت و بدکارکردن خودرو به خصوص در دورهای بالا",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "هنگام فشار روی ترمز ، لرزش حس می شود",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "تعویض نمایید \n در اثر کار کردن به تدریج خوب خواهد شد",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("هنگام فشار روی ترمز ، لرزش حس می شود",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ترمز دو پا کار می کند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "هواگیری نموده و ترمزها را تنظیم کنید \n اگر واشر عیبی ندارد سیلندر را تعویض نمایید \n عیب را برطرف کنید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ترمز دو پا کار می کند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "نیروی بیش از حد برای ترمز کردن لازم است",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "اثر خلاء روی بوستر را کنترل کنید.دست روی بوستر بگذارید در صورتیکه عملی از بوستر موقعیکه موتور کار می کند احساس نشد از متخصص کمک بگیرید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("نیروی بیش از حد برای ترمز کردن لازم است",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ترمز گیر می کند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "دوباره تنظیم کنید \n با بکار بردن سنجاق آن را باز کنید \n آزاد یا تعویض نمایید \n تمیز کرده ، روغن کاری نمایید و عمل آن را چک کنید \n تعویض نمایید \n دوباره تنظیم کنید و جای بازی اضافه به پیستون و سیلندر داده شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ترمز گیر می کند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ترمز داغ و یا دود می کند",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "لنتها را باید تنظیم کنید \n توقف کنید کنید و اجاز دهید خنک شود",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ترمز داغ و یا دود می کند",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.defaultDialog(
                    title: "ترمز بطور ناگهانی از کار می افتد",
                    titleStyle: TextStyle(fontSize: 13,fontFamily: "Sans",fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    middleText: "با مکانیک ماهر تماس حاصل کنید",
                    middleTextStyle: TextStyle(fontFamily: "Sans",fontSize: 12,height: 1.6,letterSpacing: 1),
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text("خروج")),
                  );
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 40,child: Text("ترمز بطور ناگهانی از کار می افتد",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),)
            ),
          ),
        ],
      ),

    );
  }
}
