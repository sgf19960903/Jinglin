/// 
/// @Author Tongzongwen
/// @Date 2022/10/7 17:23
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';


class ExChatMenuWidget extends CustomPainter {
  Paint bgPaint = Paint()
  ..style = PaintingStyle.fill
  ..color = AppColors.white
  ..filterQuality = FilterQuality.high
  ..isAntiAlias = true;


  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(size.width/2 - 8, 8);
    path.lineTo(size.width/2 + 8, 8);
    path.close();
    path.addRRect(RRect.fromLTRBR(0, 8, size.width, size.height, Radius.circular(4)));
    canvas.drawPath(path, bgPaint,);
    // canvas.drawShadow(path, AppColors.black.withOpacity(0.1), 0.5, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }


}
