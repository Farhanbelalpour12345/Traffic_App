import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "آموزش",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
              onTap: (){
                Get.toNamed("/safety");
              },
               child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 50,child: Text("ایمنی",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.toNamed("/rulesScreens");
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 50,child: Text("قوانین راهنمایی و رانندگی",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.toNamed("/mediaEducation");
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 50,child: Text("آشنایی با خودرو و عملکرد آن",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),)
            ),
          ),
          SizedBox(height: 40,),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(60),
            color: Colors.blueGrey[300],
            child: InkWell(
                onTap: (){
                  Get.toNamed("/diagnosis");
                },
                child: CircleAvatar(backgroundColor: Colors.blueGrey[300],radius: 50,child: Text("عیب یابی",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),)
            ),
          )
        ],
      ),
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
