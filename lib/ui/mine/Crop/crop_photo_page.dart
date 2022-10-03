/// 裁剪图片
/// @Author Tongzongwen
/// @Date 2022/9/29 21:51
/// @Description TODO

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_image_clipper.dart';
import 'package:jinglin/ui/widgets/ex_rectangle_clipper.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as img;


class CropPhotoPage extends StatefulWidget {
  const CropPhotoPage({Key? key}) : super(key: key);

  @override
  State<CropPhotoPage> createState() => _CropPhotoPageState();
}

class _CropPhotoPageState extends BaseState<CropPhotoPage> {
  GlobalKey _bgKey = GlobalKey();//背景图Key
  GlobalKey _repaintKey = GlobalKey();//截图Key
  XFile? photoFile;
  ui.Image? bgImage;
  double cropWidth = 343.w;//裁剪宽度
  double cropHeight = 343.w;//裁剪高度
  double currentScale = 1;//当年裁剪框缩放倍数
  double maxScale = 1;//最大缩放
  double minScale = 0.4;//最小缩放
  double startScale = 0;//开始缩放倍数 -- 缩放以这个参数计算
  Offset downPos = Offset.zero;//当前down位置
  late Offset cropCurrentPos;//裁剪框当前位置
  bool scaling = false;//是否正在缩放


  //显示真正裁剪视图、并进行裁剪
  showRealCropWidget() async {
    RenderRepaintBoundary renderRepaint =  _bgKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await renderRepaint.toImage();
    ByteData? imageData = await image.toByteData(format: ui.ImageByteFormat.png);
    if(imageData==null) return;
    ui.Codec codec = await ui.instantiateImageCodec(imageData.buffer.asUint8List(),);
    ui.FrameInfo fi = await codec.getNextFrame();
    bgImage = fi.image;
    setState(() {});
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _cropPhoto();
    });
  }


  @override
  void initState() {
    super.initState();
    currentScale = (343.w/screenWidth);
    cropCurrentPos = Offset(16, (screenHeight - paddingTop - 44 - 343.w)/2);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      photoFile = ModalRoute.of(context)?.settings.arguments as XFile?;
      setState(() {});
      // loadImg();
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
            showRealCropWidget();
          })
        ],
      ),
      child: GestureDetector(
        onScaleStart: (startDetails){
          scaling = true;
          startScale = currentScale.toDouble();
          downPos = Offset(startDetails.localFocalPoint.dx, startDetails.localFocalPoint.dy);
        },
        onScaleEnd: (endDetails) => scaling = false,
        onScaleUpdate: (updateDetails){
          double scale = updateDetails.scale;
          //移动裁剪框
          if(scale==1) {
            double moveX = updateDetails.localFocalPoint.dx;
            double moveY = updateDetails.localFocalPoint.dy;
            // LogUtil.printE("移动位置：${downPos.dx}--${downPos.dy}--$moveX--$moveY}");
            cropCurrentPos = Offset(cropCurrentPos.dx + (moveX - downPos.dx), cropCurrentPos.dy + (moveY - downPos.dy));
            //移动到最左边 -- 不能超过屏幕最左
            if(cropCurrentPos.dx<=0) cropCurrentPos = Offset(0, cropCurrentPos.dy);
            //移动到最右边 -- 不能超过屏幕最右
            if(cropCurrentPos.dx + cropWidth >= screenWidth) cropCurrentPos = Offset(screenWidth - cropWidth, cropCurrentPos.dy);
            //移动到最上边 -- 不能超过标题之下
            if(cropCurrentPos.dy<=0) cropCurrentPos = Offset(cropCurrentPos.dx, 0);
            //移动到最底部 -- 不能超过底部
            if(cropCurrentPos.dy + cropHeight >= screenHeight - 44 - paddingTop) cropCurrentPos = Offset(cropCurrentPos.dx, screenHeight - cropHeight - 44 - paddingTop);
            downPos = Offset(moveX, moveY);
            setState(() {});
          }else {
            //缩放裁剪框
            currentScale = (startScale + scale - 1).clamp(minScale, maxScale);
            cropWidth = screenWidth * currentScale;
            cropHeight = screenWidth * currentScale;
            //移动到最左边 -- 不能超过屏幕最左
            if(cropCurrentPos.dx<=0) cropCurrentPos = Offset(0, cropCurrentPos.dy);
            //移动到最右边 -- 不能超过屏幕最右
            if(cropCurrentPos.dx + cropWidth >= screenWidth) cropCurrentPos = Offset(screenWidth - cropWidth, cropCurrentPos.dy);
            //移动到最上边 -- 不能超过标题之下
            if(cropCurrentPos.dy<=0) cropCurrentPos = Offset(cropCurrentPos.dx, 0);
            //移动到最底部 -- 不能超过底部
            if(cropCurrentPos.dy + cropHeight >= screenHeight - 44 - paddingTop) cropCurrentPos = Offset(cropCurrentPos.dx, screenHeight - cropHeight - 44 - paddingTop);
            setState(() {});
          }
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            //背景图
            RepaintBoundary(
              key: _bgKey,
              child: "${photoFile?.path}".image(w: screenWidth,fit: BoxFit.fitWidth),
            ),
            //显示裁剪框
            if(bgImage==null) _forShowCropFrameWidget(),
            if(bgImage!=null) "".container(w: screenWidth,h: screenHeight,bgColor: AppColors.black.withOpacity(0.8)),
            if(bgImage!=null) _cropFrameWidget(),
          ],
        ),
      )
    );
  }


  //裁剪框网络
  Widget _cropBorderWidget(){
    return Column(
      children: List.generate(3, (index) {
        return Column(
          children: [
            if(index!=0) "".container(h: 0.3,bgColor: AppColors.white),
            Row(
              children: [
                "".container().exp(),
                "".container(w: 0.3,bgColor: Colors.white),
                "".container().exp(),
                "".container(w: 0.3,bgColor: AppColors.white),
                "".container().exp(),
              ],
            ).exp(),
          ],
        ).exp();
      }),
    ).container(w: cropWidth,h: cropWidth,hasBorder: true,borderColor: AppColors.white,borderWidth: 1);
  }

  //显示给用户看的裁剪框
  Widget _forShowCropFrameWidget(){
    return Column(
      children: [
        "".container(h: cropCurrentPos.dy,bgColor: AppColors.black.withOpacity(0.8)),
        Row(
          children: [
            "".container(w: cropCurrentPos.dx,bgColor: AppColors.black.withOpacity(0.8)),
            Stack(
              children: [
                "".container(w: cropWidth,),
                _cropBorderWidget(),
              ],
            ),
            "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),
          ],
        ).container(h: cropWidth),
        "".container(bgColor: AppColors.black.withOpacity(0.8)).exp(),

      ],
    );
  }

  //裁剪区域
  Widget _cropFrameWidget(){
    return Stack(
      children: [
        //裁剪
        RepaintBoundary(
          key: _repaintKey,
          child: CustomPaint(
            painter: ExImageClipper(bgImage!,cropCurrentPos.dx,cropCurrentPos.dy,cropWidth,cropWidth),
            size: Size(cropWidth,cropWidth),
          ),
        ),
        //网格
        _cropBorderWidget(),
      ],
    ).positioned(
      left: cropCurrentPos.dx,
      top: cropCurrentPos.dy,
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

