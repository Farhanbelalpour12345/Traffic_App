import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traffic_app/HomePage.dart';
import 'package:traffic_app/screens/Splash/Splash_Screen.dart';
import 'package:traffic_app/models/user.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if(user == null){
      return SplashScreen();
    }else{
      return HomePage();
    }
  }
}
