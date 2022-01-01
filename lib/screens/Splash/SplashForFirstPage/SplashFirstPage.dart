import 'package:flutter/material.dart';
import 'package:traffic_app/chewieItems.dart';
import 'package:video_player/video_player.dart';

import '../../../constants.dart';
import '../../../size_config.dart';



class SplashFirstPage extends StatelessWidget {
  const SplashFirstPage({Key? key,this.title, this.text, this.image,this.video}) : super(key: key);
  final String? title,text, image,video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Text(
          text!,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //Spacer(flex: 2),
        SizedBox(
          height: 20,
        ),
        (image!.length > 1)? Image.asset(
            image!,
            fit: BoxFit.fill,
            height: 400,
            //height : getProportionateScreenHeight(300),
            width: 400
          //width: getProportionateScreenWidth(235),
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
