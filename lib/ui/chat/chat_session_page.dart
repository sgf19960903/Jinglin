/// 聊天会话
/// @Author Tongzongwen
/// @Date 2022/9/29 21:32
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_color.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/chat_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_chat_message_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_send_input_widget.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class ChatSessionPage extends StatefulWidget {
  const ChatSessionPage({Key? key}) : super(key: key);

  @override
  State<ChatSessionPage> createState() => _ChatSessionPageState();
}

class _ChatSessionPageState extends BaseState<ChatSessionPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      bottomInsert: true,
      appBar: ExTitleView(
        titleWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //昵称
            ExTextView(S.of(context).app_name,
              isRegular: false,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //性别
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppImage().iconWomanGray.image(w: 8.w,h: 12.w,),
                    ExTextView("24",
                      color: AppColors.white,
                      size: AppSizes.hintFontSize,
                    ).container(marginL: 2.w),
                  ],
                ).container(marginL: 4.w,padL: 3.w,padR: 3.w,padT: 1,padB: 1,bgColor: AppColors.womanColor,radius: 99),
                //身高
                ExTextView("165cm",
                  color: AppColors.grayColor,
                  size: 11,
                ).container(marginL: 4.w),
              ],
            ).container(marginT: 4,),
          ],
        ),
        actionWidgets: [
          AppImage().iconMore.image(w: 24.w,h: 24.w,).onTap(() {
            NavigatorUtil.gotPage(context, RouterName.chatSettings);
          }),
        ],
      ),
      child: Column(
        children: [
          //免费次数剩余提示
          _feeCountHintWidget(),
          ExListView(
            itemCount: 50,
            padding: EdgeInsets.only(bottom: 16),
            itemBuilder: (_,index) => ExChatMessageWidget(),
          ).exp(),
          ExSendInputWidget(hasPhotoEntry: true,).container(bgColor: AppColors.white).onTap(() {
            // ChatDialogUtil.showBalanceNotEnoughDialog(context);
          }),
        ],
      )
    );
  }


  //免费次数剩余提示
  Widget _feeCountHintWidget(){
    return ExTextView(S.of(context).text_154(0),
      color: AppColors.color_F99E00,
    ).container(h: 28,align: Alignment.center,bgColor: AppColors.color_FFF4D2);
  }




}

