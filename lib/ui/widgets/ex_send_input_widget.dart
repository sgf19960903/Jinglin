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
  ExSendInputWidget({Key? key,this.hasPhotoEntry=false}) : super(key: key);
  bool hasPhotoEntry;//是否有图片选择入口

  @override
  State<ExSendInputWidget> createState() => _ExSendInputWidgetState();
}

class _ExSendInputWidgetState extends State<ExSendInputWidget> {
  bool showExpress = false;//是否显示表情列表

  //焦点监听
  _nodeListener(){
    if(!FocusScope.of(context).hasFocus) setState(() {
      showExpress = false;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      FocusScope.of(context).addListener(_nodeListener);
    });
  }

  @override
  void dispose() {
    FocusScope.of(context).removeListener(_nodeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //分割线
        "".container(h: 0.5,bgColor: AppColors.borderColor),
        //输入框、发送按钮
        Row(
          children: [
            if(widget.hasPhotoEntry) AppImage().iconGallery.image(w: 24.w,h: 24.w).container(padL: 12.w,padR: 12.w).onTap(() {

            }),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ExTextFiled(
                  hintText: S.of(context).text_53,
                ).exp(),
                "${showExpress?AppImage().iconKeyBoard:AppImage().iconSmileyWhite}".image(w: 24.w,h: 24.w,).onTap(() {
                  FocusScope.of(context).unfocus();
                  setState(() {
                    showExpress = !showExpress;
                  });
                }),
              ],
            ).container(h: 40,bgColor: AppColors.pageGrayColor,radius: 20,marginL: widget.hasPhotoEntry?0:12.w,padL: 10.w,padR: 10.w).exp(),
            //发送按钮
            ExTextView(S.of(context).text_54,
              color: AppColors.themeColor,
              isRegular: false,
            ).container(marginL: 12.w,marginR: 12.w).onTap(() {

            }),
          ],
        ).container(h: 56),
        if(showExpress) _expressListWidget(),
      ],
    ).container();
  }

  //表情列表
  Widget _expressListWidget(){
    List<String> expressImgList = List.generate(41, (index) => "assets/images/icon_phiz${index+1}.png");
    return GridView.builder(
      itemCount: 41,
      padding: EdgeInsets.only(left: 28.w,right: 28.w,top: 12,bottom: 12),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: 16.w,
        crossAxisSpacing: 16.w,
        childAspectRatio: 1,
      ),
      itemBuilder: (_,index){
        return expressImgList[index].image(w: 32.w,h: 32.w,);
      },
    ).container(h: 200,);
  }

}
