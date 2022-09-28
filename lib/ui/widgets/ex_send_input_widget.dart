/// 评论、聊天底部输入框
/// @Author Tongzongwen
/// @Date 2022/9/28 22:05
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExSendInputWidget extends StatefulWidget {
  const ExSendInputWidget({Key? key}) : super(key: key);

  @override
  State<ExSendInputWidget> createState() => _ExSendInputWidgetState();
}

class _ExSendInputWidgetState extends State<ExSendInputWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //分割线
        "".container(h: 0.5,bgColor: AppColors.borderColor),
        //输入框、发送按钮
        Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ExTextFiled(
                  hintText: S.of(context).text_53,
                ).exp(),
                AppImage().iconSmileyWhite.image(w: 24.w,h: 24.w,),
              ],
            ).container(h: 40,bgColor: AppColors.pageGrayColor,radius: 20,marginL: 12.w,padL: 10.w,padR: 10.w).exp(),
            //发送按钮
            ExTextView(S.of(context).text_54,
              color: AppColors.themeColor,
              isRegular: false,
            ).container(marginL: 12.w,marginR: 12.w).onTap(() {

            }),
          ],
        ).exp(),
      ],
    ).container(h: 56 + paddingBottom,padB: paddingBottom,);
  }
}
