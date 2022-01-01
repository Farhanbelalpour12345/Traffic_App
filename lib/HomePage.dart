import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:traffic_app/BottomNavigationBar.dart';
import 'package:traffic_app/aboutUs/aboutUs.dart';
import 'package:traffic_app/screens/originalRoute/AmalKardTaamir.dart';
import 'package:traffic_app/screens/originalRoute/education.dart';
import 'package:traffic_app/theme.dart';
import 'BottomNavigationBar.dart';
import 'package:traffic_app/screens/originalRoute/AccidentReportScreen.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/SettingScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Drawer/FreeContacts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool switchValue = false;
  bool value = false;
  late String imagePath;
  late String displayName;
  final icon = CupertinoIcons.moon_stars;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    if(_auth.currentUser!.photoURL != null){
      imagePath = _auth.currentUser!.photoURL!;
    }else if(_auth.currentUser!.photoURL == null){
      imagePath = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YL-ULXrcmLoBfL1GgzkA3lW8y437pMaB8A&usqp=CAU";
    }
      print(_auth.currentUser!.displayName);
      if(_auth.currentUser!.displayName != null){
        displayName = _auth.currentUser!.displayName!;
      }else if(_auth.currentUser!.displayName == null){
        displayName = "your name";
      }
  }

  @override
  Widget build(BuildContext context) {
    if(_auth.currentUser!.displayName != null){
      displayName = _auth.currentUser!.displayName!;
    }else if(_auth.currentUser!.displayName == null){
      displayName = "your name";
    }
    if(_auth.currentUser!.photoURL != null){
      imagePath = _auth.currentUser!.photoURL!;
    }else if(_auth.currentUser!.photoURL == null){
      imagePath = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YL-ULXrcmLoBfL1GgzkA3lW8y437pMaB8A&usqp=CAU";
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "برنامه ترافیکی",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      drawer: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text(
                displayName,
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text(
                "${_auth.currentUser!.phoneNumber}",
                style: TextStyle(fontSize: 13),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      imagePath)),
            ),
            ListTile(
              title: Text(
                "پروفایل",
                style: TextStyle(fontFamily: "Sans"),
              ),
              leading: Icon(Icons.person),
              onTap: () {
                Get.back();
                Get.toNamed("/profile");
              },
            ),
            // ListTile(
            //   title: Text(
            //     "مخاطبین مجاز",
            //     style: TextStyle(fontFamily: "Sans"),
            //   ),
            //   leading: Icon(Icons.contacts),
            //   onTap: () async {
            //     final PermissionStatus permissionStatus =
            //         await Permission.contacts.status;
            //     if (permissionStatus == PermissionStatus.granted) {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => FreeContacts()));
            //     } else {
            //       //If permissions have been denied show standard cupertino alert dialog
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) => CupertinoAlertDialog(
            //                 title: Text('مجوز دسترسی به مخاطبین'),
            //                 content:
            //                     Text('Permissions => Contacts => Active Allow'),
            //                 actions: <Widget>[
            //                   CupertinoDialogAction(
            //                     child: Text('Deny'),
            //                     onPressed: () => Navigator.of(context).pop(),
            //                   ),
            //                   CupertinoDialogAction(
            //                     child: Text('Setting'),
            //                     onPressed: () => openAppSettings(),
            //                   ),
            //                 ],
            //               ));
            //     }
            //   },
            // ),
            // ListTile(
            //     title: Text(
            //       "تنظیمات خودرو",
            //       style: TextStyle(fontFamily: "Sans"),
            //     ),
            //     leading: Icon(Icons.car_repair),
            //     onTap: () {
            //       Get.toNamed("/carSetting");
            //     }),
            // ListTile(
            //   title: Text(
            //     "تنظیمات",
            //     style: TextStyle(fontFamily: "Sans"),
            //   ),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingScreen()));
            //   },
            //   leading: Icon(Icons.settings),
            // ),
            ListTile(
              title: Text(
                "خروج",
                style: TextStyle(fontFamily: "Sans"),
              ),
              leading: Icon(Icons.logout_outlined),
              onTap: () {
                Get.offAllNamed("/logOut");
              },
            ),
            SizedBox(height: 20,),
            Divider(color: Colors.blueGrey[300],endIndent: 10,indent: 10),
            ListTile(
              title: Text(
                "درباره ما",
                style: TextStyle(fontFamily: "Sans"),
              ),
              onTap: () {
                //Navigator.pop(context);
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUs()));
                Get.back();
                Get.toNamed("/aboutUs");
              },
              leading: Icon(Icons.report),
            ),
          ],
        ),
      ),
      // body: TabBarView(
      //   controller: _tabController,
      //   children: [
      //     AccidentReportScreen(),
      //     CarSettingScreen(),
      //     BrowserAndServerSite(),
      //     SettingScreen()
      //   ],
      // ),
      body: ListView(
        physics: BouncingScrollPhysics(),
          children: [
        Container(
            height: MediaQuery.of(context).size.height ,
            child: Padding(
                padding: EdgeInsets.all(13),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AccidentReportScreen()));
                          },
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //     duration: const Duration(seconds: 1),
                          //     content: Text(
                          //   "تماس با 115",
                          //   textAlign: TextAlign.center,
                          //   textDirection: TextDirection.rtl,
                          //   style: TextStyle(fontFamily: "Sans", fontSize: 20),
                          // )));
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // width: 100,
                                  // height: 100,
                                  child: Icon(
                                    Icons.rate_review_outlined,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "گزارش و ثبت تصادف",
                                  style: TextStyle(
                                      height: 1.5,
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
                                builder: (context) => AmalKardTaamir()));
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
                                  "عملکرد،تعمیر و نگهداری خودرو",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.5,
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingScreen()));
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // width: 100,
                                  // height: 100,
                                  child: Icon(
                                    Icons.settings,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "مدیریت حواس پرتی ناشی از موبایل",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
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
            Text("data",style: TextStyle(fontSize: 50),)
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
