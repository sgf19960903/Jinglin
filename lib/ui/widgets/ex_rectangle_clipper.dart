/// 矩形裁剪
/// @Author Tongzongwen
/// @Date 2022/10/2 23:46
/// @Description TODO

import 'package:flutter/material.dart';



class ExRectangleClipper extends CustomClipper<Path> {
  double width = 0;//裁剪宽度
  double height = 0;//裁剪高度
  double dx = 0;//裁剪X轴位置
  double dy = 0;

  ExRectangleClipper({
    required this.width,
    required this.height,
    this.dx = 0,
    this.dy = 0,
  }); //裁剪Y轴位置



  @override
  Path getClip(Size size) {
    Path clipPath = Path();
    // clipPath.moveTo(dx, dy);
    clipPath.addRect(Rect.fromLTWH(dx, dy, width, height));
    return clipPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}