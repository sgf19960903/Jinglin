/// 
/// @Author Tongzongwen
/// @Date 2022/10/6 16:24
/// @Description TODO

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/bean/event/send_input_event.dart';
import 'package:video_player/video_player.dart';
import 'package:jinglin/common/res/res_path.dart';



class ExVideoWidget extends StatefulWidget {
  ExVideoWidget({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);
  String videoUrl;

  @override
  State<ExVideoWidget> createState() => _ExVideoWidgetState();
}

class _ExVideoWidgetState extends State<ExVideoWidget> {
  late VideoPlayerController _playerController;
  bool isPlaying = false;
  bool isLoading = true;
  bool showButton = true;//是否显示按钮

  @override
  void initState() {
    super.initState();
    if(widget.videoUrl.startsWith("http:")||widget.videoUrl.startsWith("https:")) _playerController = VideoPlayerController.network(widget.videoUrl)..initialize().then((value) {
      setState(() {});
    });
    else _playerController = VideoPlayerController.file(File(widget.videoUrl))
    ..initialize().then((value) {
      setState(() {});
    });
    File file = File(widget.videoUrl);
    _playerController.addListener(() {
      bool isPlaying = _playerController.value.isPlaying;
      bool isLoading = _playerController.value.isBuffering||!_playerController.value.isInitialized;
      if(this.isPlaying!=isPlaying||this.isLoading!=isLoading) setState(() {
        this.isPlaying = isPlaying;
        this.isLoading = isLoading;
      });

    });
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if(_playerController.value.isInitialized) AspectRatio(
          aspectRatio: _playerController.value.aspectRatio,
          child: VideoPlayer(_playerController),
        ),
        //按钮与黑色蒙版
        AnimatedOpacity(
          opacity: showButton?1:0,
          duration: Duration(milliseconds: 300),
          child: Stack(
            alignment: Alignment.center,
            children: [
              "".container(bgColor: AppColors.black.withOpacity(0.6),radius: 12.w),
              if(!isLoading) "${isPlaying?AppImage().iconPauseVideo:AppImage().iconPlayVideo}".image(w: 36.w,h: 36.w).onTap(() async{
                App.eventBus.fire(SendInputEvent(1,"ChatSession"));
                if(_playerController.value.isPlaying) await _playerController.pause();
                else await _playerController.play();
                delayedHideButton();
              }),
            ],
          ),
        ),
        //加载圈圈
        if(isLoading) CircularProgressIndicator(
          color: AppColors.white,
          strokeWidth: 2,
        ).container(w: 36.w,h: 36.w,),
      ],
    ).container(w: 170.w,h: 238.w,bgColor: AppColors.black.withOpacity(0.8),radius: 12.w).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"ChatSession"));
      setState(() {
        showButton = !showButton;
      });
      // delayedHideButton();
    });
  }


  //延迟隐藏按钮
  delayedHideButton(){
    if(showButton&&isPlaying) Future.delayed(Duration(seconds: 2),(){
      if(showButton&&isPlaying) setState(() {
        showButton = false;
      });
    });
  }
}

