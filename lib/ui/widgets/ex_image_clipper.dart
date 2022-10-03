/// 
/// @Author Tongzongwen
/// @Date 2022/10/3 14:38
/// @Description TODO

import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class ExImageClipper extends CustomPainter{

  ExImageClipper(this.bgImg,this.cropX,this.cropY,this.cropWidth,this.cropHeight);
  ui.Image bgImg;
  double cropWidth = 0;
  double cropHeight = 0;
  double cropX;
  double cropY;

  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawImage(bgImg, Offset.zero, Paint());
    canvas.drawImageRect(bgImg, Rect.fromLTWH(cropX, cropY, cropWidth, cropHeight), Rect.fromLTWH(0, 0, size.width, size.height), Paint()..color=Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }



}
