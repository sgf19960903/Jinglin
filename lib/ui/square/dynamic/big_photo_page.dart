/// 大图查看
/// @Author Tongzongwen
/// @Date 2022/9/28 23:11
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/base/base_state.dart';


class BigPhotoPage extends StatefulWidget {
  const BigPhotoPage({Key? key}) : super(key: key);

  @override
  State<BigPhotoPage> createState() => _BigPhotoPageState();
}

class _BigPhotoPageState extends BaseState<BigPhotoPage> {
  List<String> _photoList = [];//图片位置
  int _currentPhotoIndex = 0;//当前图片位置
  
  

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Map<String,dynamic>? argMap = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>?;
      _photoList = argMap?["photoList"]??[];
      _currentPhotoIndex = argMap?["photoIndex"]??0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: Colors.transparent,
      child: Column(
        children: [
          _imageWidget().exp(),
          _navigatorWidget(),
        ],
      ).container(bgColor: AppColors.black,padB: paddingBottom).onTap(() {
        Navigator.of(context).pop();
      })
    );
  }

  //大图显示
  Widget _imageWidget(){
    return Hero(
      tag: "bigPhoto",
      child: PageView(
        controller: PageController(),
        onPageChanged: (index) {
          setState(() {
            _currentPhotoIndex = index;
          });
        },
        children: List.generate(_photoList.length, (index) {
          return _photoList[index].image(w: screenWidth,fit: BoxFit.fitWidth);
        }),
      )
    );
  }


  //图片导航
  Widget _navigatorWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_photoList.length, (index) {
        return "".container(w: index==_currentPhotoIndex?20.w:6.w,h: 6.w,radius: 6.w,bgColor: AppColors.white,marginL: index==0?0:8.w);
      }),
    ).container(marginB: 12);
  }

}

