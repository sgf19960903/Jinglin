/// 推送设置
/// @Author Tongzongwen
/// @Date 2022/9/29 21:16
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';

class PushSettingsPage extends StatefulWidget {
  const PushSettingsPage({Key? key}) : super(key: key);

  @override
  State<PushSettingsPage> createState() => _PushSettingsPageState();
}

class _PushSettingsPageState extends BaseState<PushSettingsPage> {
  List<String> settingNameList = [S.current.text_118,S.current.text_119,S.current.text_120];

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      appBar: ExTitleView(
        titleCenter: true,
        title: S.of(context).text_82,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(settingNameList.length, (index) => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExTextView(settingNameList[index],
                size: 16,
                isRegular: false,
              ).exp(),
              AppImage().iconSwitchOn.image(w: 51.w,h: 30,),
            ],
          ).container(h: 56,onlyBottomBorder: true,),),
        ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,),
      ),
    );
  }
}

