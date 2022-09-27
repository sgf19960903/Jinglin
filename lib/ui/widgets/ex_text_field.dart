import 'package:jinglin/common/res/res_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ExTextFiled extends StatefulWidget {
  ExTextFiled({
    Key? key,
    this.controller,
    this.textColor,
    this.textSize = 14,
    this.textIsBold = false,
    this.hintTextColor ,
    this.hintTextSize = 14,
    this.hintTextIsBold = false,
    this.hasBorder = false,
    this.hasWholeBorder = false,
    this.borderColor,
    this.borderWidth = 1,
    this.borderRadius = 0,
    this.hintText = "",
    this.foucsBorderWidth = 1,
    this.foucsBorderColor,
    this.maxLines = 1,
    this.formatters,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.focusNode,
    this.prefixWidget,
    this.prefixConstraints,
    this.suffixWidget,
    this.suffixConstraints,
    this.padding,
    this.enable = true,
    this.isPass=false,
    this.showCursor = true,
    this.readOnly = false,
    this.maxLenght,
    this.onSubmitted,
    this.onFocus,
    this.autoFocus=false,
    this.textInputAction=TextInputAction.search,
    this.textAlign=TextAlign.start,
    this.onTap,
  }) : super(key: key);
  TextEditingController? controller;
  Color? textColor;
  double textSize;
  bool textIsBold;
  Color? hintTextColor;
  double hintTextSize;
  bool hintTextIsBold;
  bool hasBorder;
  bool hasWholeBorder;
  Color? borderColor;
  double borderWidth;
  double borderRadius;
  Color? foucsBorderColor;
  double foucsBorderWidth;
  String hintText;
  int maxLines;
  List<TextInputFormatter>? formatters;
  TextInputType keyboardType;
  Function(String)? onChanged;
  Function(String)? onSubmitted;
  Function(bool)? onFocus;
  Function()? onTap;
  Widget? prefixWidget;
  Widget? suffixWidget;
  BoxConstraints? prefixConstraints;
  BoxConstraints? suffixConstraints;
  EdgeInsetsGeometry? padding;
  bool enable;
  bool isPass;
  bool showCursor;
  bool readOnly;
  int? maxLenght;
  FocusNode? focusNode;
  bool autoFocus;
  TextInputAction textInputAction;
  TextAlign textAlign;

  @override
  ExTextFiledState createState() => ExTextFiledState();

}


class ExTextFiledState extends State<ExTextFiled>{

  @override
  void initState() {
    super.initState();
    if(widget.hintTextColor==null) widget.hintTextColor = AppColors.grayColor;
    if(widget.textColor==null) widget.textColor = AppColors.textColor;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: widget.textAlign,
      enableInteractiveSelection: true,
      showCursor: true,
      readOnly: widget.readOnly,
      focusNode: widget.focusNode,
      maxLength: widget.maxLenght,
      enabled: widget.enable,
      controller: widget.controller,
      maxLines: widget.maxLines,
      autofocus:widget.autoFocus,
      inputFormatters: widget.formatters,
      keyboardType: widget.keyboardType,
      textAlignVertical: TextAlignVertical.center,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      obscureText: widget.isPass,
      textInputAction: widget.textInputAction,
      onTap: widget.onTap,
      strutStyle: kIsWeb?StrutStyle(forceStrutHeight: true, height: 1):null,
      style: TextStyle(
        fontSize: widget.textSize.sp,
        color: widget.textColor??AppColors.textColor,
        fontWeight: widget.textIsBold ? FontWeight.bold : FontWeight.normal,
      ),
      toolbarOptions: ToolbarOptions(
        copy: true,
        cut: true,
        paste: true,
        selectAll: true,
      ),
      decoration: InputDecoration(
        contentPadding: widget.padding??EdgeInsets.zero,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: widget.hintTextSize.sp,
          color: widget.hintTextColor??AppColors.textColor,
          fontWeight: widget.hintTextIsBold ? FontWeight.bold : FontWeight.normal,
        ),
        prefixIcon: widget.prefixWidget,
        suffixIcon: widget.suffixWidget,
        prefixIconConstraints: widget.prefixConstraints,
        suffixIconConstraints: widget.suffixConstraints,
        enabledBorder: widget.hasBorder
            ? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor??AppColors.lineColor, width: widget.borderWidth),
        )
            : widget.hasWholeBorder? OutlineInputBorder(borderSide: BorderSide(color: widget.borderColor??AppColors.lineColor, width: widget.borderWidth),borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)))
            :OutlineInputBorder(borderSide: BorderSide.none),
        border: widget.hasBorder
            ? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor??AppColors.lineColor, width: widget.borderWidth),
        )
            : widget.hasWholeBorder? OutlineInputBorder(borderSide: BorderSide(color: widget.borderColor??AppColors.lineColor, width: widget.borderWidth),borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)))
            :OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: widget.hasBorder
            ? UnderlineInputBorder(
          borderSide: BorderSide(
              color: widget.foucsBorderColor??AppColors.lineColor,
              width:
              widget.foucsBorderWidth == 0 ? widget.borderWidth : widget.foucsBorderWidth),
        )
            : widget.hasWholeBorder? OutlineInputBorder(borderSide: BorderSide(color: widget.foucsBorderColor??AppColors.lineColor, width: widget.foucsBorderWidth),borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)))
            :OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }



}