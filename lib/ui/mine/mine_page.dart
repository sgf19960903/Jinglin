/// 个人中心
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/ui/base/base_state.dart';


class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends BaseState<MinePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      hasHeaderIntroImg: true,
      child: Stack(
        children: [

        ],
      ),
    );
  }


  //用户信息
  Widget _infoWidget(){
    return Column(
      children: [

      ],
    );
  }

}
