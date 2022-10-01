import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExTitleView extends StatelessWidget implements ObstructingPreferredSizeWidget{
  String? title;
  Widget? titleWidget;
  bool titleCenter;
  Color titleColor;
  Color titleAndStatusColor;
  double titleSize;
  String? backImage;
  bool showBackItem ;
  VoidCallback? menuCallBack;
  VoidCallback? backCallback;
  String? menuImage;
  List<Widget>? actionWidgets;
  bool hasTitlePadding;
  double titleHeight;
  bool bottomLine;
  bool isGradientBg;


  ExTitleView({Key? key,
    this.title,
    this.titleWidget,
    this.titleColor=AppColors.pageColor,
    this.backImage,
    this.showBackItem = true,
    this.bottomLine = true,
    this.menuImage,
    this.menuCallBack,
    this.titleCenter=false,
    this.titleSize=18,
    this.titleAndStatusColor=Colors.transparent,
    this.backCallback,
    this.actionWidgets,
    this.hasTitlePadding=true,
    this.titleHeight = 44,
    this.isGradientBg=false,
  }) : super(key: key);



  //渐变背景 -- 包含装天蓝
  Widget _gradientBgWidget(){
    if(!isGradientBg) return "".container(w: double.infinity,h: AppSizes.titleHeight+paddingTop,bgColor: titleColor);
    return AppImage().mineHeaderBg.image(w: double.infinity,h: AppSizes.titleHeight+paddingTop,fit: BoxFit.fill);
  }


  //标题区域
  Widget _titleWidget(BuildContext context){
    if(titleWidget!=null) return Row(
      children: [
        "${backImage??AppImage().iconBackBlack}".image(w: AppSizes.iconSize.w,h: AppSizes.titleHeight,).container(
            marginR: AppSizes.pagePaddingLR
        ).onTap(() {
          if(backCallback==null) return Navigator.of(context).pop();
          backCallback!();
        }),
        titleWidget!.exp(),
        //右边菜单选项
        if(actionWidgets!=null) Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: actionWidgets!,
        ),
      ],
    ).container(
      h: titleHeight,
      marginT: paddingTop,
      padL: AppSizes.pagePaddingLR,
      padR: AppSizes.pagePaddingLR,
    );
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        //返回按钮
        "${backImage??AppImage().iconBackBlack}".image(w: AppSizes.iconSize.w,h: AppSizes.titleHeight,).onTap(() {
          if(backCallback==null) return Navigator.of(context).pop();
          backCallback!();
        }).container(align: Alignment.centerLeft),
        //文字
        if(title!=null) ExTextView(title!,
          size: AppSizes.titleFontSize,
          isRegular: false,
        ).container(
          align: titleCenter?Alignment.center:Alignment.centerLeft,
          marginL: AppSizes.iconSize.w + (titleCenter?0:AppSizes.pagePaddingLR),
          marginR: AppSizes.iconSize.w + (titleCenter?0:AppSizes.pagePaddingLR),
        ),
        //右边菜单选项
        if(actionWidgets!=null) Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: actionWidgets!,
        ),
      ],
    ).container(h: AppSizes.titleHeight,padL: 12.w,padR: 12.w,marginT: paddingTop,onlyBottomBorder: bottomLine,borderColor: AppColors.borderColor,borderWidth: 0.3);
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _gradientBgWidget(),
        _titleWidget(context),
      ],
    );
  }




  @override
  Size get preferredSize => Size.fromHeight(AppSizes.titleHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;

}

