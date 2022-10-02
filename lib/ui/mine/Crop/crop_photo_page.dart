/// 裁剪图片
/// @Author Tongzongwen
/// @Date 2022/9/29 21:51
/// @Description TODO

import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_rectangle_clipper.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:path_provider/path_provider.dart';


class CropPhotoPage extends StatefulWidget {
  const CropPhotoPage({Key? key}) : super(key: key);

  @override
  State<CropPhotoPage> createState() => _CropPhotoPageState();
}

class _CropPhotoPageState extends BaseState<CropPhotoPage> {
  GlobalKey _repaintKey = GlobalKey();//截图Key
  XFile? photoFile;
  double currentScale = 1;//当年裁剪框缩放倍数
  double maxScale = 1;//最大缩放
  double minScale = 0.5;//最小缩放
  Offset downPos = Offset.zero;//当前down位置
  late Offset cropCurrentPos;//裁剪框当前位置
  bool scaling = false;//是否正在缩放

  @override
  void initState() {
    super.initState();
    currentScale = (343.w/screenWidth);
    cropCurrentPos = Offset(16, (screenHeight - paddingTop - 44 - 343.w)/2);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      photoFile = ModalRoute.of(context)?.settings.arguments as XFile?;
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
      bgColor: AppColors.black,
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
          ).container(w: 60.w,h: 32,align: Alignment.center,radius: 999,bgColor: AppColors.themeColor).onTap(() async{
            _cropPhoto();
          })
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          "${photoFile?.path}".image(w: screenWidth,fit: BoxFit.fitWidth),
          // _cropFrameWidget(),
          "".container(w: screenWidth,h: screenHeight,bgColor: AppColors.black.withOpacity(0.8)),
          RepaintBoundary(
            key: _repaintKey,
            child: ClipPath(
              clipper: ExRectangleClipper(
                width: 343.w,
                height: 343.w,
                dx: cropCurrentPos.dx,
                dy: cropCurrentPos.dy,
              ),
              child: "${photoFile?.path}".image(w: screenWidth,fit: BoxFit.fitWidth),
            ).container(bgColor: Colors.red),
          ),
        ],
      )
    );
  }


  //裁剪区域
  Widget _cropFrameWidget(){
    return Column(
      children: [
        //上面黑色区域
        "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),
        Row(
          children: [
            //左边黑色区域
            "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),
            //裁剪框
            GestureDetector(
              onScaleStart: (scaleEvent) => scaling = true,
              onScaleEnd: (scaleEvent) => scaling = false,
              onScaleUpdate: (scaleEvent){
                LogUtil.printE("缩放大小：${scaleEvent.scale}");

              },
              onTapDown: (downDetails){
                downPos = Offset(downDetails.globalPosition.dx, downDetails.globalPosition.dy);
              },
              // onPanUpdate: (updateDetails){
              //   //正在缩放则不移动
              //   if(scaling) return;
              //   setState(() {
              //
              //   });
              //
              // },
              onTapUp: (downDetails){

              },
              onTapCancel: (){

              },
              child: "".container(w: screenWidth*currentScale,h: 343.w,hasBorder: true,borderColor: AppColors.white),
            ),
            //右边黑色区域
            "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),
          ],
        ).container(h: screenWidth*currentScale),
        //下面黑色区域
        "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),
      ],
    );
  }

  //裁剪图片
  _cropPhoto() async{
    RenderRepaintBoundary renderRepaint =  _repaintKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await renderRepaint.toImage();
    ByteData? imageData = await image.toByteData(format: ui.ImageByteFormat.png);
    //裁剪失败
    if(imageData==null) return ToastUtil.showMsg(S.of(context).text_157);
    //保存至手机临时目录
    Directory dir = await getTemporaryDirectory();
    String savePath = dir.path + "/crop_img_${DateTime.now().millisecondsSinceEpoch}.png";
    // LogUtil.printE("保存路径：$savePath");
    File saveFile = File(savePath);
    await saveFile.create();
    await saveFile.writeAsBytes(imageData.buffer.asInt8List());
    Navigator.of(context).pop(savePath);
  }
}

