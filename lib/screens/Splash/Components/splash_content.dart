import 'package:flutter/material.dart';
import 'package:traffic_app/chewieItems.dart';
import 'package:video_player/video_player.dart';

import '../../../constants.dart';
import '../../../size_config.dart';



class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text, this.image,this.video}) : super(key: key);
  final String? text, image,video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        // Text(
        //   "App Name",
        //   style: TextStyle(
        //     fontSize: getProportionateScreenWidth(36),
        //     color: kPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //Spacer(flex: 2),
        (image!.length > 1)? Image.asset(
            image!,
            fit: BoxFit.fill,
            height: 400,
            //getProportionateScreenHeight(300),
            width: 400
    //getProportionateScreenWidth(235),
        ):Container(
          height: 400,
          width: 400,
          child: ChewieItems(
            videoPlayerController: VideoPlayerController.asset(video!),
          ),
        ),
      ],
    );
  }
}
