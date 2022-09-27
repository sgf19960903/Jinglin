import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';


class ExTextView extends StatefulWidget {


  ExTextView(this.text,{Key? key,
    this.color,
    this.size=AppSizes.fontSize,
    this.isBold=false,
    this.decoration=TextDecoration.none,
    this.decorationStyle=TextDecorationStyle.solid,
    this.decorationColor=Colors.white,
    this.maxLines=1,
    this.overflow=TextOverflow.ellipsis,
    this.textAlign= TextAlign.start,
    this.leading,
    this.textLineHeight, /// 文本间距
    this.isStrutStyle = kIsWeb,
    this.fontFamily,
    this.lineHeight,
  }) : super(key: key);


  String text;
  Color? color;
  double size;
  bool isBold;
  TextDecoration decoration;
  TextDecorationStyle decorationStyle;
  Color decorationColor;
  int maxLines;
  TextOverflow overflow;
  TextAlign textAlign;
  double? leading;
  double? textLineHeight; /// 文本间距
  bool isStrutStyle;
  String? fontFamily;
  double? lineHeight;
  _ExTextViewState? state;

  @override
  State<ExTextView> createState() => _ExTextViewState();

  // textTapDown(){
  //   state?.textTapDown();
  // }
  //
  // textTapUp(){
  //   state?.textTapUp();
  // }

}

class _ExTextViewState extends State<ExTextView> {


  // textTapDown(){
  //   setState(() {
  //     widget.color = widget.color.withOpacity(0.2);
  //   });
  //   print("手指textTapDown...${widget.color}");
  // }
  //
  // textTapUp(){
  //   setState(() {
  //     widget.color = widget.color.withOpacity(1);
  //   });
  //   print("手指textTapUp...${widget.color}");
  // }

  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      strutStyle: widget.isStrutStyle ? StrutStyle(forceStrutHeight: true, height: 1, leading: widget.leading) : null,
      style: TextStyle(
        color: widget.color??AppColors.textColor,
        fontSize: widget.size,
        fontWeight: widget.isBold?FontWeight.bold:FontWeight.w500,
        decoration: widget.decoration,
        decorationStyle: widget.decorationStyle,
        decorationColor: widget.decorationColor,
        // fontFamily: widget.fontFamily??"DINPro",
      ),
    );
  }

}




