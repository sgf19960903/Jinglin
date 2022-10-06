/// 完善用户信息
/// @Author Tongzongwen
/// @Date 2022/9/29 21:06
/// @Description 用户第一次登录

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/common/utils/shared_preferences_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ImproveUserInfoPage extends StatefulWidget {
  const ImproveUserInfoPage({Key? key}) : super(key: key);

  @override
  State<ImproveUserInfoPage> createState() => _ImproveUserInfoPageState();
}

class _ImproveUserInfoPageState extends BaseState<ImproveUserInfoPage> {
  TextEditingController _userNameController = TextEditingController(text: "流年灬未亡");
  DateTime? _currentDate;
  List<String> _randomUserNameList = [
    "流年灬未亡",
    "舞动Dē灵魂￠",
    "别在我面前犯贱",
    "__没有背景丶只有背影",
    "乂日光倾城¤",
    "丶猫猫er",
    "雪花ミ飞舞",
    "在哪跌倒こ就在哪躺下",
    "淡抹丶悲伤"];//随机用户名列表
  String _userAvatar = "";
  String _userHeight = "165cm";
  int sexType = 1;//0--男 1--女
  int _age = 22;//年龄
  int _heightSelectedIndex = 45;//高度选择位置
  int _userNameSelectedIndex = 0;//用户名选中位置

  @override
  void dispose() {
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      child: Column(
        children: [
          Stack(
            children: [
              AppImage().loginTopBg.image(w: double.infinity,h: 358,fit: BoxFit.fill),
              AppImage().improveHeaderBg.image(w: screenWidth,h: 20,).container(marginT: 100),
              _userInfoWidget(),
            ],
          ).exp(),
          _saveButtonWidget(),
        ],
      ),
    );
  }

  //用户信息
  Widget _userInfoWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            if(_userAvatar.isEmpty) Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconCameraBlack.image(w: 24.w,h: 24.w,),
                ExTextView(S.of(context).app_name,
                  size: 16,
                  color: AppColors.grayColor,
                ).container(marginT: 4),
              ],
            ).container(w: 90.w,h: 90.w,marginL: 12.w,marginR: 12.w,marginB: 5,radius: 8,bgColor: AppColors.white),
            if(_userAvatar.isNotEmpty) _userAvatar.image().clipRRect(radius: 8).container(w: 90.w,h: 90.w,marginL: 12.w,marginR: 12.w,marginB: 5,radius: 8,bgColor: AppColors.white),
            AppImage().iconCameraCircle.image(w: 24.w,h: 24.w),
          ],
        ).onTap(() {
          FocusScope.of(context).unfocus();
          CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index) async{
            XFile? photoFile;
            //拍摄
            if(index==0) photoFile = await CameraUtil.takePhoto();
            //相册
            else if(index==1) photoFile = await CameraUtil.openGallery();
            //没有获取到图片
            if(photoFile==null) return;
            //跳转到裁剪页面
            NavigatorUtil.gotPage(context, RouterName.cropPhoto,param: photoFile,backFun: (value){
              if(value!=null) setState(() {
                _userAvatar = value;
              });
            });
          });
        }),
        //性别设置提示
        ExTextView(S.of(context).text_16,
          size: 12,
          color: AppColors.themeColor,
        ).container(marginT: 19,align: Alignment.center),

        //性别选择
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //男
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconManBlue.image(w: 24.w,h: 24.w,),
                ExTextView(S.of(context).text_17,
                  size: 16,
                  color: AppColors.textColor,
                ).container(marginL: 10.w)
              ],
            ).container(h: 44,w: 98.w,radius: 8,bgColor: sexType==0?AppColors.color_F5F8FF:AppColors.white,hasBorder: sexType==0,borderColor: AppColors.manColor).onTap(() {
              FocusScope.of(context).unfocus();
              setState(() {
                sexType = 0;
              });
            }),
            "".container(w: 24.w),
            //女
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconWomanPink.image(w: 24.w,h: 24.w,),
                ExTextView(S.of(context).text_18,
                  size: 16,
                  color: AppColors.textColor,
                ).container(marginL: 10.w)
              ],
            ).container(h: 44,w: 98.w,radius: 8,bgColor: sexType==1?AppColors.themeColor.withOpacity(0.05):AppColors.white,hasBorder: sexType==1,borderColor: AppColors.womanColor).onTap(() {
              FocusScope.of(context).unfocus();
              setState(() {
                sexType = 1;
              });
            }),
          ],
        ).container(marginT: 24),
        //昵称
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView(S.of(context).text_19,
              size: 16,
              color: AppColors.grayColor,
            ),
            ExTextFiled(
              controller: _userNameController,
              padding: EdgeInsets.only(left: 12.w),
              hintText: "",
              hintTextSize: 16,
              textSize: 16,
              textAlign: TextAlign.right,
            ).exp(),
            AppImage().iconRefresh.image(w: 16.w,h: 16.w).container(marginL: 4.w,).onTap(() {
              FocusScope.of(context).unfocus();
              if(_userNameSelectedIndex>=_randomUserNameList.length-1) _userNameSelectedIndex = 0;
              else ++_userNameSelectedIndex;
              _userNameController.text = _randomUserNameList[_userNameSelectedIndex];
            }),
          ],
        ).container(
          h: 48,
          marginL: AppSizes.pagePaddingLR,
          marginR: AppSizes.pagePaddingLR,
          padL: AppSizes.pagePaddingLR,
          padR: AppSizes.pagePaddingLR,
          radius: 8,
          bgColor: AppColors.white,
          marginT: 24,
        ),
        //年龄
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView(S.of(context).text_20,
              size: 16,
              color: AppColors.grayColor,
            ),
            ExTextView(S.of(context).text_153(_age),
              size: 16,
              color: AppColors.textColor,
              isRegular: false,
              textAlign: TextAlign.right,
            ).exp(),
            AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w,),
          ],
        ).container(
          h: 48,
          marginL: AppSizes.pagePaddingLR,
          marginR: AppSizes.pagePaddingLR,
          padL: AppSizes.pagePaddingLR,
          padR: AppSizes.pagePaddingLR,
          radius: 8,
          bgColor: AppColors.white,
          marginT: 16,
        ).onTap(() {
          FocusScope.of(context).unfocus();
          CommonDialogUtil.showDateChoiceDialog(context,currentDate: _currentDate,selectedFunc: (dateTime){
            _currentDate = dateTime;
            DateTime nowDate = DateTime.now();
            setState(() {
              _age = nowDate.year - dateTime.year;
            });
          });
        }),
        //身高
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView(S.of(context).text_21,
              size: 16,
              color: AppColors.grayColor,
            ),
            ExTextView("$_userHeight",
              size: 16,
              color: AppColors.textColor,
              isRegular: false,
              textAlign: TextAlign.right,
            ).exp(),
            AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w,),
          ],
        ).container(
          h: 48,
          marginL: AppSizes.pagePaddingLR,
          marginR: AppSizes.pagePaddingLR,
          padL: AppSizes.pagePaddingLR,
          padR: AppSizes.pagePaddingLR,
          radius: 8,
          bgColor: AppColors.white,
          marginT: 16,
        ).onTap(() {
          FocusScope.of(context).unfocus();
          List<String> heightList = List.generate(80, (index) => "${120+index}cm");
          CommonDialogUtil.showScrollChoiceDialog(context,heightList,selectedIndex: _heightSelectedIndex,selectedFunc: (index){
            setState(() {
              _heightSelectedIndex = index;
              _userHeight = heightList[index];
            });
          });
        }),
      ],
    ).container(marginT: 158);
  }

  //保存按钮
  Widget _saveButtonWidget(){
    return ExTextView(S.of(context).text_28,
      color: AppColors.white,
      size: 16,
    ).container(
        h: 44,
        align: Alignment.center,
        radius: 8,
        marginL: AppSizes.pagePaddingLR,
        marginR: AppSizes.pagePaddingLR,
        bgColor: AppColors.white,
        gradient: LinearGradient(
          colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
        )
    ).onTap(() {
      App.token = "";
      SharedPreferencesUtil.saveString(SharedPreferencesName.TOKEN, "123");
      NavigatorUtil.goPageAndRemove(context, RouterName.main);
    }).container(
      padL: AppSizes.pagePaddingLR,
      padR: AppSizes.pagePaddingLR,
      padT: 6,
      padB: 26 + paddingBottom,
      bgColor: AppColors.white,
    );

  }


}

