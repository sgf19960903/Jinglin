/// 个人信息
/// @Author Tongzongwen
/// @Date 2022/9/29 21:18
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/mine/personal_info_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';


class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends BaseState<PersonalInfoPage> {
  MyPersonalInfoProvider _provider = MyPersonalInfoProvider();
  TextEditingController _userNameController = TextEditingController(text: "小小小");
  TextEditingController _introController = TextEditingController(text: "");
  DateTime? _currentDate;
  bool _canUpdate = true;//是否能修改
  String _userAvatar = AppImage().iconWechat;//用户头像
  String _userHeight = "165cm";
  int sexType = 1;//0--男 1--女
  int _age = 22;//年龄
  int _heightSelectedIndex = 45;//高度选择位置
  int _userNameSelectedIndex = 0;//用户名选中位置



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _introController.dispose();
    _provider.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: widgetBuild(
          bottomInsert: true,
          bgColor: AppColors.pageGrayColor,
          appBar: ExTitleView(
            title: S.of(context).text_87,
            titleCenter: true,
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    _avatarWidget(),
                    _userNameWidget(),
                    _sexWidget(),
                    _ageWidget(),
                    _heightWidget(),
                    _phoneNumberWidget(),
                    _introduceWidget(),
                  ],
                ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR),
              ).exp(),
              _updateButtonWidget(),
            ],
          )
      ),
    );
  }

  //头像设置
  Widget _avatarWidget(){
    return Stack(
      children: [
        _userAvatar.image(w: 90.w,h: 90.w,).clipRRect(radius: 8).container(marginL: 10.w,marginR: 10.w,marginB: 5),
        AppImage().iconCameraCircle.image(w: 20.w,h: 20.w).positioned(bottom: 0,right: 0,),
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
    }).container(marginT: 24,align: Alignment.center);
  }


  //用户名
  Widget _userNameWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_19,
          color: AppColors.grayColor,
          size: 16,
        ).container(marginR: 8.w),
        ExTextFiled(
          controller: _userNameController,
          onChanged: (value) {
            setState(() {
              _canUpdate = value.length>0;
            });
          },
          hintText: S.of(context).text_22,
          hintTextSize: 16,
          textSize: 16,
          hintTextColor: AppColors.color_BBBBBB,
          textAlign: TextAlign.right,
        ).exp(),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 20,radius: 8,bgColor: AppColors.white);
  }


  //性别
  Widget _sexWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_92,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("(${S.of(context).text_90})",
          color: AppColors.color_BBBBBB,
          size: 14,
        ).container(marginL: 4.w),
        ExTextView(S.of(context).text_135,
          color: AppColors.grayColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white);
  }


  //年龄
  Widget _ageWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_20,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView(S.of(context).text_153(_age),
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      FocusScope.of(context).unfocus();
      CommonDialogUtil.showDateChoiceDialog(context,currentDate: _currentDate,selectedFunc: (dateTime){
        _currentDate = dateTime;
        DateTime nowDate = DateTime.now();
        _age = nowDate.year - dateTime.year;
        setState(() {});
      });

    });
  }


  //身高
  Widget _heightWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_21,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("$_userHeight",
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      FocusScope.of(context).unfocus();
      List<String> heightList = List.generate(80, (index) => "${120+index}cm");
      CommonDialogUtil.showScrollChoiceDialog(context,heightList,selectedIndex: _heightSelectedIndex,selectedFunc: (index){
        setState(() {
          _heightSelectedIndex = index;
          _userHeight = heightList[index];
        });
      });
    });
  }


  //手机号
  Widget _phoneNumberWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_89,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("18373603863".hideCenterPhone(),
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      FocusScope.of(context).unfocus();
      NavigatorUtil.gotPage(context, RouterName.updatePhone);
    });
  }


  //自我介绍
  Widget _introduceWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView(S.of(context).text_88,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextFiled(
          controller: _introController,
          padding: EdgeInsets.only(top: 10),
          hintText: S.of(context).text_91,
          hintTextSize: 16,
          textSize: 16,
          hintTextColor: AppColors.color_BBBBBB,
          maxLines: 10,
        ).exp(),
      ],
    ).container(h: 130,padT: 12,padB: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white);
  }

  //修改按钮
  Widget _updateButtonWidget(){
    return ExTextView(S.of(context).text_93,
      color: AppColors.white,
    ).container(
        h: AppSizes.buttonHeight,
        radius: 8,
        align: Alignment.center,
        bgColor: AppColors.white,
        gradient: LinearGradient(colors: [
          AppColors.gradientButtonBeginColor.withOpacity(_canUpdate?1:0.5),
          AppColors.gradientButtonEndColor.withOpacity(_canUpdate?1:0.5),
        ])
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white).onTap(() async{
      FocusScope.of(context).unfocus();
      if(!_canUpdate) return ToastUtil.showMsg(S.of(context).text_22);

    });
  }

}



