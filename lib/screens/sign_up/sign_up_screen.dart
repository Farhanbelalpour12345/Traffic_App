import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traffic_app/HomePage.dart';
import 'package:traffic_app/Services/database.dart';
import 'package:traffic_app/constants.dart';
import 'package:traffic_app/size_config.dart';
import 'package:get/get.dart';

enum MobileVerificationState { SHOW_MOBILE_FORM_STATE, SHOW_OTP_FORM_STATE }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  final phoneNumberController = TextEditingController();
  final otpController = TextEditingController();
  final nameController = TextEditingController();
  String verificationId = '';
  bool showLoading = false;
  late bool isButtonEnabled;
  late bool isButtonConfirmEnabled;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });
    try {
      UserCredential authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      await DatabaseService(_auth.currentUser!.uid).updateUserData(
          nameController.text,
          "0${phoneNumberController.text}",
          _auth.currentUser!.photoURL);
      setState(() {
        showLoading = false;
        _auth.currentUser?.updateDisplayName(nameController.text);
      });
      if (authCredential.user != null) {
        Get.offAllNamed("/homePage",
            parameters: ({
              "phoneNumber": "0${phoneNumberController.text}",
              "name": "${nameController.text}"
            }));
      }
    } on FirebaseAuthException catch (e) {
      // TODO
      setState(() {
        showLoading = false;
      });
      _scaffoldKey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }

  getMobileFormWidget(context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'خوش آمدید',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sans",
                      // color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Text(
                      'لطفا شماره موبایل خود را بدون صفر وارد کنید',
                      style: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 16,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w200),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onFieldSubmitted: null,
                      onChanged: (val) {
                        isEmpty();
                      },
                      textDirection: TextDirection.ltr,
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 42, vertical: 20),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          hintText: '9120000000',
                          hintStyle: TextStyle(color: Colors.black26),
                          // hintStyle: TextStyle(color: Colors.black12),
                          icon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Spacer(
                      flex: 6,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white,
                          backgroundColor: Colors.blueGrey[300],
                        ),
                        onPressed: isButtonEnabled
                            ? () async {
                                setState(() {
                                  showLoading = true;
                                });
                                await _auth.verifyPhoneNumber(
                                    phoneNumber:
                                        "+98${phoneNumberController.text}",
                                    verificationCompleted:
                                        (phoneAuthCredential) async {
                                      setState(() {
                                        showLoading = false;
                                      });
                                    },
                                    verificationFailed:
                                        (verificationFailed) async {
                                      setState(() {
                                        showLoading = false;
                                      });
                                      _scaffoldKey.currentState?.showSnackBar(
                                          SnackBar(
                                              content: Text(verificationFailed
                                                  .message!)));
                                      print(verificationFailed.message);
                                    },
                                    codeSent:
                                        (verificationId, resendingToken) async {
                                      setState(() {
                                        showLoading = false;
                                        currentState = MobileVerificationState
                                            .SHOW_OTP_FORM_STATE;
                                        this.verificationId = verificationId;
                                      });
                                    },
                                    codeAutoRetrievalTimeout:
                                        (verificationId) async {});
                              }
                            : null,
                        child: Text(
                          'ارسال کد',
                          style: TextStyle(
                            fontFamily: "Sans",
                            fontSize: getProportionateScreenWidth(18),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  getOtpFormWidget(context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  // Text(
                  //   'خوش آمدید',
                  //   style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.bold,
                  //       fontFamily: "Sans"),
                  // ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Text(
                      'لطفا کد ارسال شده را وارد کنید',
                      style: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLength: 6,
                      onFieldSubmitted: null,
                      onChanged: (val) {
                        isEmpty2();
                      },
                      controller: otpController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 42, vertical: 20),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          hintText: '******',
                          // hintStyle: TextStyle(color: Colors.black12),
                          icon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "نام و نام خانوادگی",
                      style: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onFieldSubmitted: null,
                      onChanged: (val) {
                        isEmpty2();
                      },
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 42, vertical: 20),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          ),
                          // hintStyle: TextStyle(color: Colors.black12),
                          icon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: kTextColor),
                            gapPadding: 10,
                          )),
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Spacer(
                      flex: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white,
                          backgroundColor: Colors.blueGrey[300],
                        ),
                        onPressed: isButtonConfirmEnabled
                            ? () async {
                                print(nameController.text);
                               await _auth.currentUser
                                    ?.updateDisplayName(nameController.text);
                                print(_auth.currentUser?.displayName);
                                PhoneAuthCredential phoneAuthCredential =
                                    PhoneAuthProvider.credential(
                                        verificationId: verificationId,
                                        smsCode: otpController.text);
                                signInWithPhoneAuthCredential(
                                    phoneAuthCredential);
                              }
                            : null,
                        child: Text(
                          'تایید',
                          style: TextStyle(
                            fontFamily: "Sans",
                            fontSize: getProportionateScreenWidth(18),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      body: Container(
        child: showLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                ? getMobileFormWidget(context)
                : getOtpFormWidget(context),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (phoneNumberController.text.length >= 10) {
      isButtonEnabled = true;
    } else {
      isButtonEnabled = false;
    }
    if (otpController.text.length >= 6) {
      isButtonConfirmEnabled = true;
    } else {
      isButtonConfirmEnabled = false;
    }
  }

  bool isEmpty() {
    setState(() {
      if (phoneNumberController.text.length >= 10) {
        isButtonEnabled = true;
      }
    });
    return isButtonEnabled;
  }

  bool isEmpty2() {
    setState(() {
      if (otpController.text.length >= 6) {
        isButtonConfirmEnabled = true;
      }
    });
    return isButtonConfirmEnabled;
  }
}
