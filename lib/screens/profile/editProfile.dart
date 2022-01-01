import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:traffic_app/Services/database.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String imagePath =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YL-ULXrcmLoBfL1GgzkA3lW8y437pMaB8A&usqp=CAU";
  late String displayName;
  // final String text = "${_auth.currentUser!.displayName}";

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   nameController.dispose();
  //   phoneController.dispose();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: "${_auth.currentUser!.displayName}");
    phoneController = TextEditingController(text: "${_auth.currentUser!.phoneNumber}");
    if (_auth.currentUser!.displayName != null) {
      displayName = _auth.currentUser!.displayName!;
    } else if (_auth.currentUser!.displayName == null) {
      displayName = "نام شما";
    }
    setState(() {
      _auth.currentUser!.updateDisplayName(nameController.text);
    });
  }
  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    //check Permission
    await Permission.photos.request();
    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      //select image
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        var file = File(image.path);
        //upload to firebase
        var snapshot =
            await _storage.ref().child('folderName/imageName').putFile(file);

        var downloadUrl = await snapshot.ref.getDownloadURL();
        await DatabaseService(_auth.currentUser!.uid).updateUserData(
            _auth.currentUser!.displayName,
            _auth.currentUser!.phoneNumber,
            downloadUrl);
        imagePath = downloadUrl;
        setState((){
          _auth.currentUser?.updatePhotoURL(downloadUrl);
        });
      } else {
        print("no path received");
      }
    } else {
      print("Grant permission and try again");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'ویرایش پروفایل',
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Center(
            child: InkWell(
              onTap: () {
                uploadImage();
              },
              child: Stack(children: [
                ClipOval(
                  child: Material(
                      color: Colors.transparent,
                      child: (_auth.currentUser!.photoURL != null)
                          ? Image.network(
                              // "${_auth.currentUser?.photoURL}",
                              "${_auth.currentUser!.photoURL}",
                              height: 128,
                              width: 128,
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              imagePath,
                              height: 128,
                              width: 128,
                              fit: BoxFit.cover,
                            )),
                ),
                Positioned(
                    bottom: 0,
                    right: 5,
                    child: buildCircle(
                      color: Colors.white,
                      all: 3,
                      child: buildCircle(
                          child: Icon(
                            Icons.add_a_photo,
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
        Text('نام و نام خانوادگی',style: TextStyle(fontFamily: "Sans"),textAlign: TextAlign.center,),
        Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
              textAlign: TextAlign.center,
              controller: nameController,
              onEditingComplete: (){
                setState(() {
                  _auth.currentUser!.updateDisplayName(nameController.text);
                });
              },
              onChanged: (_){
                setState(() {
                  _auth.currentUser!.updateDisplayName(nameController.text);
                });
              },

              // onEditingComplete: (){
              //   setState(() {
              //     _auth.currentUser!.updateDisplayName(nameController.text);
              //   });
            //  },
            )),
        SizedBox(
          height: 24,
        ),
        Text('شماره موبایل',style: TextStyle(fontFamily: "Sans"),textAlign: TextAlign.center,),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
            textAlign: TextAlign.center,
            controller: phoneController,
          ),

          // child: TextFieldWidget(
          //     label: 'شماره موبایل',
          //     text: "${_auth.currentUser!.phoneNumber}",
          //     onChanged: (phoneNumber) {}),
        ),
        SizedBox(
          height: 100,
        ),
        Center(
          child: ButtonWidget(
              text: "ذخیره",
              onClicked: ()async {
               await DatabaseService(_auth.currentUser!.uid).updateUserData(nameController.text, phoneController.text, _auth.currentUser!.photoURL);
                setState((){
                  _auth.currentUser!.updateDisplayName(nameController.text);
                  Get.back(result: ({"name":"${nameController.text}"}));
                });
              }),
        )
      ]),
    );
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

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String text;
  final ValueChanged<String> onChanged;

  TextFieldWidget(
      {Key? key,
      required this.label,
      required this.text,
      required this.onChanged})
      : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
          textAlign: TextAlign.center,
          controller: nameController,
        )
      ],
    );
  }
}
