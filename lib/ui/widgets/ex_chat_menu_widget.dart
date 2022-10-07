/// 
/// @Author Tongzongwen
/// @Date 2022/10/7 17:23
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';


class ExChatMenuWidget extends CustomPainter {
  bool isArrowTop = true;//是否朝上
  Paint bgPaint = Paint()
  ..style = PaintingStyle.fill
  ..color = Colors.white;

  ExChatMenuWidget(this.isArrowTop);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.addRRect(RRect.fromLTRBR(0, isArrowTop?8:0, size.width, (isArrowTop?108:100), Radius.circular(4)));

    if(isArrowTop) {
      path.moveTo(size.width/2, 0);
      path.lineTo(size.width/2 - 8, 8);
      path.lineTo(size.width/2 + 8, 8);
      path.close();
    }else {
      path.moveTo(size.width/2 - 8, 100);
      path.lineTo(size.width/2 + 8, 100);
      path.lineTo(size.width/2, 108);
      path.close();
    }

    canvas.drawShadow(path, AppColors.black, 2, false);
    canvas.drawPath(path, bgPaint,);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }


}
