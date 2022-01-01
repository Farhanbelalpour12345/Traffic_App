import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import 'size_config.dart';


class ChewieItems extends StatefulWidget {
  const ChewieItems({Key? key,required this.videoPlayerController}) : super(key: key);

  final VideoPlayerController videoPlayerController ;


  @override
  _ChewieItemsState createState() => _ChewieItemsState();
}

class _ChewieItemsState extends State<ChewieItems> {
  late ChewieController _chewieController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 4/3,
        autoInitialize: true,
        allowFullScreen: false,
        allowedScreenSleep: false,
        allowPlaybackSpeedChanging: false,
        allowMuting: false,
        autoPlay: false,
        looping: false,
        isLive: false,

        fullScreenByDefault: false,
        showOptions: false,
        errorBuilder: (context, errorMessage){
          return Center(
            child: Text(errorMessage,style: TextStyle(color: Colors.white),),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
      child: Chewie(controller: _chewieController),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}