import 'package:bittchainpro/common/res/res_path.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:bittchainpro/ui/widgets/ex_text_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExEmptyView extends StatelessWidget {
  ExEmptyView({
    Key? key,
    this.imgWidth=250,
    this.imgHeight=66,
    this.textImgInterval=10,
    this.height,
    this.emptyImg,
    this.emptyText,
    this.fontSize=13,
    this.hintColor,
  }) : super(key: key);

  double imgWidth;
  double imgHeight;
  double textImgInterval;//文字和图片间距
  double? height;
  String? emptyImg;
  String? emptyText;
  double fontSize;
  Color? hintColor;


  @override
  Widget build(BuildContext context) {
    if(emptyText==null) emptyText = S.of(context).text_344;
    if(emptyImg==null) emptyImg = AppImage().iconEmpty;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "${emptyImg??AppImage().iconEmpty}".image(w: imgWidth.w,h: imgHeight),
        ExTextView("${emptyText??""}",
          color: hintColor??AppColors().commonGrayColor,
          size: fontSize,
        ).container(marginT: 0),
      ],
    ).container(h: height??230,w: double.infinity);
  }
}
