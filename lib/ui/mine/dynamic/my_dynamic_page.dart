/// 我的动态
/// @Author Tongzongwen
/// @Date 2022/9/30 23:54
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_dynamic_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class MyDynamicPage extends StatefulWidget {
  const MyDynamicPage({Key? key}) : super(key: key);

  @override
  State<MyDynamicPage> createState() => _MyDynamicPageState();
}

class _MyDynamicPageState extends BaseState<MyDynamicPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
        appBar: ExTitleView(
          titleCenter: true,
          title: S.of(context).text_79,
        ),
        child: ExListView(
          itemCount: 10,
          padding: EdgeInsets.only(top: 16,left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
          itemBuilder: (_,index) => ExDynamicWidget(index,isSelf: true,),
        )
    );
  }
}

