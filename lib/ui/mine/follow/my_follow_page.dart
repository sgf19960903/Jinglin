/// 我的关注
/// @Author Tongzongwen
/// @Date 2022/9/29 21:28
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_size.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/ui/widgets/ex_user_simple_info_widget.dart';

class MyFollowPage extends StatefulWidget {
  const MyFollowPage({Key? key}) : super(key: key);

  @override
  State<MyFollowPage> createState() => _MyFollowPageState();
}

class _MyFollowPageState extends BaseState<MyFollowPage> {

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
        appBar: ExTitleView(
          titleCenter: true,
          title: S.of(context).text_47,
        ),
        child: ExListView(
          itemCount: 10,
          padding: EdgeInsets.only(left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
          itemBuilder: (_,index) => ExUserSimpleInfoWidget(),
        )
    );
  }
}

