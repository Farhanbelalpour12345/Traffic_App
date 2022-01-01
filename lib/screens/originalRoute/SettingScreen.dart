import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../../BottomNavigationBar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "مدیریت حواس پرتی ناشی از موبایل",
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold,fontSize: 16),
          ),
          elevation: 0.7,
        ),
        body: Column(
          children: [
            SwitchListTile(
              value: _toggle1,
              onChanged: (bool value) {
                setState(() {
                  _toggle1 = value;
                });
              },
              title: Text(
                "غیرفعال سازی برنامه های متنی",
                textAlign: TextAlign.right,
                style:
                    TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              subtitle: Text(
                (() {
                  if (_toggle1 == false) {
                    return "غیرفعال";
                  } else if (_toggle1 == true) {
                    return "فعال";
                  }
                  return "";
                })(),
                textAlign: TextAlign.right,
                style:
                    TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              secondary: Icon(Icons.app_blocking),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SwitchListTile(
              value: _toggle2,
              onChanged: (bool value) {
                setState(() {
                  _toggle2 = value;
                });
              },
              title: Text(
                "فعال سازی حالت 'مزاحم نشوید'",
                textAlign: TextAlign.right,
                style:
                    TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              subtitle: Text(
                (() {
                  if (_toggle2 == false) {
                    return "غیرفعال";
                  } else if (_toggle2 == true) {
                    return "فعال";
                  }
                  return "";
                })(),
                textAlign: TextAlign.right,
                style:
                    TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              secondary: Icon(Icons.mobile_friendly_rounded),
              controlAffinity: ListTileControlAffinity.leading,
            ),
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

  late bool _toggle1 = false;

  late bool _toggle2 = false;

  void text() async {
    if (_toggle1 == false) {
      Text("غیرفعال");
    } else {
      Text("فعال");
    }
  }
}
