import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/screens/originalRoute/education.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../BottomNavigationBar.dart';
import 'CarSettingScreen.dart';

class AmalKardTaamir extends StatelessWidget {
  const AmalKardTaamir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "عملکرد، تعمیر و نگهداری خودرو",
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold,fontSize: 16),
          ),
          elevation: 0.7,
        ),
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: GridView.count(
                    crossAxisCount: 2, //مشخص کردن دو ستونه بودن بادی
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    children: [
                      Card(
                        color: Colors.blueGrey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        elevation: 7,
                        child: InkWell(
                          highlightColor: Colors.red,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarSettingScreen()));
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // width: 100,
                                  // height: 100,
                                  child: Icon(
                                    Icons.car_repair,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "یادآور ها",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        elevation: 7,
                        child: InkWell(
                          highlightColor: Colors.red,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EducationScreen()));
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // width: 100,
                                  // height: 100,
                                  child: Icon(
                                    Icons.vpn_lock_outlined,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "آموزش",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]))),
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
