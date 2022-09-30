/// 通用空白视图
/// @Author Tongzongwen
/// @Date 2022/9/28 5:55 下午
/// @Description TODO
///
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExEmptyView extends StatelessWidget {
  ExEmptyView({
    Key? key,
    this.imgWidth=174,
    this.imgHeight=174,
    this.textImgInterval=10,
    this.height,
    this.emptyImg,
    this.emptyText,
    this.fontSize=16,
    this.hintColor,
    this.marginT,
  }) : super(key: key);

  double imgWidth;
  double imgHeight;
  double textImgInterval;//文字和图片间距
  double? height;
  String? emptyImg;
  String? emptyText;
  double fontSize;
  Color? hintColor;
  double? marginT;


  @override
  Widget build(BuildContext context) {
    if(emptyText==null) emptyText = S.of(context).text_344;
    if(emptyImg==null) emptyImg = AppImage().emptyBg;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "${emptyImg??AppImage().emptyBg}".image(w: imgWidth.w,h: imgHeight),
        ExTextView("${emptyText??""}",
          color: hintColor??AppColors.color_BBBBBB,
          size: fontSize,
        ).container(marginT: 0),
      ],
    ).container(w: double.infinity,marginT: marginT??120);
  }
}
