/// 评论、聊天底部输入框
/// @Author Tongzongwen
/// @Date 2022/9/28 22:05
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExSendInputWidget extends StatefulWidget {
  ExSendInputWidget({
    Key? key,
    this.hasPhotoEntry=false,
    this.sendFunc,
  }) : super(key: key);
  bool hasPhotoEntry;//是否有图片选择入口
  Function(String)? sendFunc;

  @override
  State<ExSendInputWidget> createState() => _ExSendInputWidgetState();
}

class _ExSendInputWidgetState extends State<ExSendInputWidget> with WidgetsBindingObserver {
  TextEditingController _contentController = TextEditingController();//内容输入框控制器
  FocusNode _inputNode = FocusNode();
  FocusScopeNode _focusNode = FocusScopeNode();
  List<String> _expressSymbolList = List.generate(41, (index) => "[#${index+1}]");//表情对应的符号
  bool showExpressList = false;//是否显示表情列表
  bool clickInput = false;
  bool showEmpty = false;

  //输入框焦点监听
  _inputFocusListener(){
    // LogUtil.printE("输入框焦点：${_inputNode.hasFocus}");
    // if(_inputNode.hasFocus) setState(() {
    //   showExpressList = false;
    // });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _inputNode.addListener(_inputFocusListener);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      if(MediaQuery.of(context).viewInsets.bottom==0){
        //关闭键盘
        LogUtil.printE("键盘关闭...${MediaQuery.of(context).viewInsets.bottom}--$clickInput");
        if(!clickInput&&!showExpressList) {
          setState(() {
            showEmpty = false;
          });
        }

      }else{
        //显示键盘
        LogUtil.printE("显示键盘...${MediaQuery.of(context).viewInsets.bottom}--$clickInput");
        clickInput = false;
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    _inputNode.removeListener(_inputFocusListener);
    _contentController.dispose();
    _focusNode.dispose();
    _inputNode.dispose();
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
            //相册
            if(widget.hasPhotoEntry) AppImage().iconGallery.image(w: 24.w,h: 24.w).container(padL: 12.w,padR: 12.w).onTap(() async{
              setState(() {
                showExpressList = false;
              });
              List<XFile>? assetsList = await ImagePicker().pickMultiImage();

            }),
            //输入框、表情列表
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ExTextFiled(
                  focusNode: _inputNode,
                  controller: _contentController,
                  hintText: S.of(context).text_53,
                  onTap: (){
                    showEmpty = true;
                    clickInput = true;
                    setState(() {
                      showExpressList = false;
                    });
                  },
                ).exp(),
                FocusScope(
                  node: _focusNode,
                  canRequestFocus: true,
                  onFocusChange: (hasFocus){
                    LogUtil.printE("表情焦点：$hasFocus");
                    if(!hasFocus) setState(() {
                      showExpressList = false;
                    });
                  },
                  child: "${showExpressList?AppImage().iconKeyBoard:AppImage().iconSmileyWhite}".image(w: 24.w,h: 24.w,).onTap(() {
                    setState(() {
                      showExpressList = !showExpressList;
                    });

                    showEmpty = showExpressList;
                    if(showExpressList) _focusNode.requestFocus();
                  })
                ),
              ],
            ).container(h: 40,bgColor: AppColors.pageGrayColor,radius: 20,marginL: widget.hasPhotoEntry?0:12.w,padL: 10.w,padR: 10.w).exp(),
            //发送按钮
            ExTextView(S.of(context).text_54,
              color: AppColors.themeColor,
              isRegular: false,
            ).container(marginL: 12.w,marginR: 12.w).onTap(() {
              if(widget.sendFunc!=null) widget.sendFunc!(_contentController.text);
            }),
          ],
        ).container(h: 56,),
        if(showEmpty) Stack(
          children: [
            if(showExpressList) _expressListWidget(),
          ],
        ).container(h: 200 + (MediaQuery.of(context).viewInsets.bottom-200>0?(MediaQuery.of(context).viewInsets.bottom-200):0)),
      ],
    );
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
        return expressImgList[index].image(w: 32.w,h: 32.w,).onTap(() {
          _contentController.text = "${_contentController.text}${_expressSymbolList[index]}";
        });
      },
    ).container(h: 200,);
  }

}
