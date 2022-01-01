import 'package:flutter/material.dart';
import 'package:traffic_app/screens/Splash/Components/Body.dart';
import 'package:traffic_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey[300],
        body: Body(),
    );
  }
}
