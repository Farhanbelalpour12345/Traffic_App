import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../BottomNavigationBar.dart';
class CarSettingScreen extends StatefulWidget {
  const CarSettingScreen({Key? key}) : super(key: key);

  @override
  _CarSettingScreenState createState() => _CarSettingScreenState();
}

class _CarSettingScreenState extends State<CarSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "یادآورها",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(10),
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: Text(
                  "برای بروزرسانی و مشاهده آخرین وضعیت روی آیکون مورد نظر کلیک کنید.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ))),
            CardItem(onTap: (){
              Get.toNamed("/engineOil");
            }, imagePath: "assets/images/oil.jpeg", text: "روغن موتور",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/oilFilter");
            }, imagePath: "assets/images/oil_filter.jpg" , text: "فیلتر روغن",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/airFilter");
            }, imagePath: "assets/images/filter.jpeg" , text: "فیلتر هوا",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/gearboxOil");
            }, imagePath: "assets/images/oil_girbox.jpg" , text: "روغن گیربکس",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/gasolineFilter");
            }, imagePath: "assets/images/filterBenzin.jpg" , text: "فیلتر بنزین",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/antiFreeze");
            }, imagePath: "assets/images/zedYakh.jpg" , text: "ضد یخ",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/hydraulicOil");
            }, imagePath: "assets/images/oilHidrolic.jpg" , text: "روغن هیدرولیک",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/brakeOil");
            }, imagePath: "assets/images/oilTormoz.jpg" , text: "روغن ترمز",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/carPile");
            }, imagePath: "assets/images/shaaem.jpg" , text: "شمع",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/tire");
            }, imagePath: "assets/images/lastic.jpg" , text: "لاستیک",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/timingBelt");
            }, imagePath: "assets/images/TimingBelt.jfif" , text: "تسمه تایم",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/disk");
            }, imagePath: "assets/images/Disk.jpg" , text: "صفحه دیسک",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
            CardItem(onTap: (){
              Get.toNamed("/lent");
            }, imagePath: "assets/images/LentTormoz.jpg" , text: "لنت ترمز",fontSize: 25,),
            SizedBox(
              height: 10,
            ),
          ]),
      bottomNavigationBar: TBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed("/accidentReport"),
        child: Icon(Icons.insert_comment_outlined),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class CardItem extends StatelessWidget {
  const CardItem({Key? key,required this.onTap, this.imagePath,required this.text, required this.fontSize}) : super(key: key);
  final VoidCallback onTap;
  final String? imagePath;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(60),
      color: Colors.blueGrey[300],
      child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey[300],
                backgroundImage:(imagePath != null)? AssetImage(imagePath!):null,
                radius: 40.0,
              ),
              Expanded(
                child: SizedBox(
                  child: ListTile(
                    title: Text(
                      text,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        height: 1.5,
                          fontFamily: "Sans",
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.star),
                  ),
                ),
              )
            ],
          )),
    );
  }
}


