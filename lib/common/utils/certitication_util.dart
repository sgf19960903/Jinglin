


import 'package:bittchainpro/application/providers.dart';
import 'package:bittchainpro/common/router/router_manager.dart';
import 'package:bittchainpro/common/utils/dialog/common_dialog_util.dart';
import 'package:bittchainpro/common/utils/navigator_util.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

class CertiticationUtil {



  //判断认证审核状态
  static bool judgeCertStatus(BuildContext context,{bool needAdvanced=false,bool forceAdvance=false}){
    //0--已注册 1--初级审核中  2--初级审核未通过  3--初级审核通过  4--高级审核中  5--高级审核未通过  6--高级审核通过
    int status = int.tryParse(Providers.userProvider.userInfoBean?.level??"0")??0;
    String title = S.of(context).text_0;
    String buttonText = S.of(context).text_0;
    if(status==0){
      title = S.of(context).text_368;
      buttonText = S.of(context).text_370;
    }else if(status==1){
      title = S.of(context).text_369;
      buttonText = S.of(context).text_263;
    }else if(status==2){
      title = S.of(context).text_104;
      buttonText = S.of(context).text_370;
    }else if(status==3){
      if(!needAdvanced) return true;
      else {
        if(forceAdvance) {
          title = S.of(context).text_372;
          buttonText = S.of(context).text_370;
        }else {
          title = S.of(context).text_374;
          buttonText = S.of(context).text_263;
        }
      }
    }else if(status==4){
      if(!needAdvanced) return true;
      title = S.of(context).text_373;
      buttonText = S.of(context).text_263;
    }else if(status==5){
      if(!needAdvanced) return true;
      title = S.of(context).text_107;
      buttonText = S.of(context).text_263;
    }else if(status==6){
      return true;
    }
    CommonDialogUtil.showHintDialog(context,
      content: title,
      buttonText: buttonText,
      sureClicked: (){
        if(status!=1&&!needAdvanced) NavigatorUtil.gotPage(context, RouterName.primaryCert);
        else {
          if(needAdvanced&&forceAdvance&&status<6) {
            NavigatorUtil.gotPage(context, RouterName.advancedCert);
          }
        }

      }
    );
    return false;
  }
}