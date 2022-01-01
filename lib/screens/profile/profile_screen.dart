import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/Services/Auth.dart';
import 'editProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      if (_auth.currentUser!.photoURL != null) {
        imagePath = _auth.currentUser!.photoURL!;
      } else if (_auth.currentUser!.photoURL == null) {
        imagePath =
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YL-ULXrcmLoBfL1GgzkA3lW8y437pMaB8A&usqp=CAU";
      }

      if (_auth.currentUser!.displayName != null) {
        displayName = _auth.currentUser!.displayName!;
      } else if (_auth.currentUser!.displayName == null) {
        displayName = "نام شما";
      }
    });
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String imagePath;
  late String displayName;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser!.photoURL != null) {
      imagePath = _auth.currentUser!.photoURL!;
    } else if (_auth.currentUser!.photoURL == null) {
      imagePath =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YL-ULXrcmLoBfL1GgzkA3lW8y437pMaB8A&usqp=CAU";
    }
    if (_auth.currentUser!.displayName != null) {
      displayName = _auth.currentUser!.displayName!;
    } else if (_auth.currentUser!.displayName == null) {
      displayName = "نام شما";
    }
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: Text(
            'پروفایل',
            style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.toNamed("/editProfile");
                  },
                  child: Stack(children: [
                    ClipOval(
                      child: Material(
                        color: Colors.transparent,
                        child: Image.network(
                          imagePath,
                          height: 128,
                          width: 128,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 5,
                        child: buildCircle(
                          color: Colors.white,
                          all: 3,
                          child: buildCircle(
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                              all: 5,
                              color: Colors.blue),
                        )),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Text(
                        displayName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: "Sans"),
                        textDirection: TextDirection.ltr,
                      ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${_auth.currentUser!.phoneNumber}",
                  style: TextStyle(fontFamily: "Sans"),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Center(
                child: ButtonWidget(
                    text: "ویرایش",
                    onClicked: () {
                      Get.toNamed("/editProfile");
                      //Get.to(EditProfile(),fullscreenDialog: true,opaque: false);
                    }))
          ],
        ));
  }

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  ButtonWidget({required this.text, required this.onClicked, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 12)),
        onPressed: onClicked,
        child: Text(
          text,
          style: TextStyle(fontFamily: "Sans"),
        ));
  }
}
