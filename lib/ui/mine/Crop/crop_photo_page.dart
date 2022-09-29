/// 裁剪图片
/// @Author Tongzongwen
/// @Date 2022/9/29 21:51
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class CropPhotoPage extends StatefulWidget {
  const CropPhotoPage({Key? key}) : super(key: key);

  @override
  State<CropPhotoPage> createState() => _CropPhotoPageState();
}

class _CropPhotoPageState extends BaseState<CropPhotoPage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  }


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.white,
      appBar: ExTitleView(
        titleColor: Colors.transparent,
        backImage: AppImage().iconBackWhite,
        bottomLine: false,
        actionWidgets: [
          //完成按钮
          ExTextView(S.of(context).text_40,
            size: 12,
            isRegular: false,
            color: Colors.white,
          ).container(w: 60.w,h: 32,align: Alignment.center,radius: 999,bgColor: AppColors.themeColor).onTap(() {

          })
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AppImage().iconWechat.image(w: screenWidth,fit: BoxFit.fitWidth),
          _cropFrameWidget(),
        ],
      )
    );
  }


  //裁剪框
  Widget _cropFrameWidget(){
    return RepaintBoundary(
      child: Center(
        child: "".container(w: 343.w,h: 343.w,hasBorder: true,borderColor: AppColors.white),
      ).container(
        w: screenWidth,
        h: screenHeight,
        bgColor: AppColors.black.withOpacity(0.5)
      ),
    );
  }
}

