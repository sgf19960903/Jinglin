
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_refresh_footer_view.dart';
import 'package:jinglin/ui/widgets/ex_refresh_header_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';



extension WidgetExtention on Widget {


  Widget safeArea({bool top=true,bool bottom=true}){
    return SafeArea(
      child: this,
      top: top,
      bottom: bottom,
    );
  }


  Widget positioned({double? left,double? right,double? top,double? bottom,double? width,double? height}) => Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      width: width,
      height: height,
      child: this
  );

  Widget willPop(WillPopCallback? onWillPop) => WillPopScope(
      child: this,
      onWillPop: onWillPop
  );

  EdgeInsetsGeometry all(double value) => EdgeInsets.all(value);

  EdgeInsetsGeometry only({double l = 0, double t = 0, double r = 0, double b = 0}) =>
      EdgeInsets.only(top: t, left: l, right: r, bottom: b);

  Padding pad({Key? key, double l = 0, double t = 0, double r = 0, double b = 0}) =>
      Padding(key: key, padding: only(l: l, r: r, t: t, b: b), child: this);

  Widget line({double h = .5, Color? color}) => Divider(color: AppColors.lineColor, height: h);

  Widget inkTap(VoidCallback onTap, {Key? key, Color color = Colors.white, bool value = true}) =>
      value ? Ink(key: key, child: InkWell(onTap: onTap, child: this), color: color) : this;

  Widget onTap(GestureTapCallback onTap,
      {Key? key,
        bool clearFocus = true,
        HitTestBehavior behavior = HitTestBehavior.opaque,
        bool value = true,
        GestureLongPressCallback? onLongTap,
        Function(TapDownDetails)? onTapDown,
        Function(TapUpDetails)? onTapUp,
        Function()? onTapCancel,
        Function(DragUpdateDetails)? dragUpdate,
        Function(DragDownDetails)? dragDown,
        Function(DragUpdateDetails)? dragHorUpdate,
        Function(DragUpdateDetails)? panUpdate,
      }) {
    return value ? GestureDetector(
      key: key,
      behavior: behavior,
      onTap: (){
        onTap();
      },
      child: this,
      onLongPress: onLongTap,
      onTapDown: (details){
        if(onTapDown!=null) return onTapDown(details);


      },
      onTapUp: (details){
        if(onTapUp!=null) return onTapUp(details);
      },
      onTapCancel: (){

      },
      onVerticalDragUpdate: dragUpdate,
      onHorizontalDragUpdate: dragHorUpdate,
      onPanUpdate: panUpdate,
      onHorizontalDragDown: dragDown,
    ) : this;
  }

  Widget flex({Key? key, int flex = 1, bool value = true}) => value ? Expanded(key: key, flex: flex, child: this) : this;

  Center center({
    Key? key,
  }) =>
      Center(key: key, child: this);

  SizedBox sizeBox({Key? key, double? w, double? h}) => SizedBox(key: key, width: w, height: h, child: this);

  Align align({Key? key, required Alignment alignment, double? widthFactor, double? heightFactor}) =>
      Align(key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: this);


  SmartRefresher smartRefresher({
    required RefreshController controller,
    ScrollController? scrollController,
    VoidCallback? onRefresh,
    VoidCallback? onLoading,
    bool enablePullDown=true,
    bool enablePullUp=false,
    Axis scrollDirection=Axis.vertical,
    ScrollPhysics? physics,
  }){
    return SmartRefresher(
      physics: physics,
      controller: controller,
      scrollController: scrollController,
      child: this,
      header: ExRefreshHeaderView(),
      footer: ExRefreshFooterView(),
      onRefresh: onRefresh,
      onLoading: onLoading,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      scrollDirection: scrollDirection,
    );
  }

  ClipRRect clipRRect({double radius=0}) => ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    child: this,
  );

  // DottedBorder dotted({Color borderColor=Colors.black,double borderWidth=1,double radius=0}) => DottedBorder(
  //   child: this,
  //   borderType: radius==0?BorderType.Rect:BorderType.RRect,
  //   strokeWidth: borderWidth,
  //   color: borderColor,
  //   radius: Radius.circular(radius),
  //
  // );

  Widget container({
    Key? key,
    double? w,
    double? h,
    double marginL=0,
    double marginR=0,
    double marginT=0,
    double marginB=0,
    double margin=-1,
    double padL=0,
    double padR=0,
    double padT=0,
    double padB=0,
    double pad=-1,
    EdgeInsetsGeometry? marginG,
    EdgeInsetsGeometry? padG,
    Alignment? align,
    Decoration? dec,
    Color bgColor=Colors.transparent,
    String? bgImg,
    bool hasBorder=false,
    Color borderColor=Colors.transparent,
    double borderWidth=0.5,
    bool onlyBottomBorder=false,
    double radius=-1,
    Gradient? gradient,
    double topLeftRadius=0,
    double topRightRadius=0,
    double bottomLeftRadius=0,
    double bottomRightRadius=0,
    bool hasDashBorder=false,
    bool hasShadow=false,
    BoxConstraints? boxConstraints,
    List<BoxShadow>? shadow,
    BoxFit bgImgFit=BoxFit.fill}){
    ImageProvider? imgProvider;
    if(bgImg!=null){
      if(bgImg.startsWith("assets/")) imgProvider = AssetImage(bgImg);
      else if(bgImg.startsWith("http://")||bgImg.startsWith("https://")) imgProvider = NetworkImage(bgImg);
      else imgProvider = FileImage(File(bgImg));
    }
    //给默认边框颜色
    if((hasBorder||onlyBottomBorder)&&borderColor==Colors.transparent) borderColor = AppColors.borderColor;
    return Container(
      key: key,
      child: this,
      width: w,
      height: h,
      constraints: boxConstraints,
      decoration: dec!=null?dec:BoxDecoration(
          color: bgColor,
          gradient: gradient,
          image: bgImg!=null?DecorationImage(
            image: imgProvider!,
            fit: bgImgFit,
          ):null,
          border: hasBorder||onlyBottomBorder?Border(
            top: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            right: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            left: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            bottom: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ):null,
          borderRadius: radius==-1?(topLeftRadius==0&&topRightRadius==0&&bottomLeftRadius==0&&bottomRightRadius==0)?null:BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius),
          ):
          BorderRadius.all(Radius.circular(radius)),
          boxShadow: hasShadow?[
            BoxShadow(
                color: AppColors.lineColor,
                blurRadius: 0.5,
                spreadRadius: 0.5
            )
          ]:shadow==null?[]:shadow
      ),
      padding: padG != null? padG : (pad!=-1?EdgeInsets.all(pad):EdgeInsets.only(
          left: padL,
          right: padR,
          top: padT,
          bottom: padB
      )),
      margin: (marginG!=null)?marginG:(margin!=-1?EdgeInsets.all(margin):EdgeInsets.only(
          left: marginL,
          right: marginR,
          top: marginT,
          bottom: marginB
      )),
      alignment: align,
    );
  }

  Widget exp({Key? key,int flex=1})=> Expanded(child: this,flex: flex,);

  Widget offstage({bool stage=false})=> Offstage(child: this,offstage: stage,);

  Widget richText(List<String> texts,List<double> textSizes,List<Color> textColors,{List<bool>? isTextBolds}) {
    List<TextSpan> textSpans = [];
    for(int i=0;i<texts.length;i++){
      bool isBold = isTextBolds==null?false:isTextBolds[i];
      TextSpan span = TextSpan(
          text: texts[i],
          style: TextStyle(
              color: textColors[i],
              fontSize: textSizes[i],
              fontWeight: isBold?FontWeight.bold:FontWeight.normal
          )
      );
      textSpans.add(span);
    }
    return RichText(
      text: TextSpan(
          children: textSpans
      ),
    );
  }

  Widget onPress(void Function() press,{double radius=0,double leftTop=0,double leftBottom=0,double rightTop=0,double rightBottom=0})=> FlatButton(
    shape: RoundedRectangleBorder(
        borderRadius: radius==0?BorderRadius.only(
          topLeft: Radius.circular(leftTop),
          topRight: Radius.circular(rightTop),
          bottomLeft: Radius.circular(leftBottom),
          bottomRight: Radius.circular(rightBottom),
        ):BorderRadius.all(Radius.circular(radius))
    ),
    child: this,
    onPressed: press,
    padding: EdgeInsets.all(0),
  );


}