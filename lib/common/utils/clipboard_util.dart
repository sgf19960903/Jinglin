import 'package:bittchainpro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bittchainpro/common/utils/toast_util.dart';
import 'package:bittchainpro/generated/l10n.dart';


class ClipboardUtil {

  //复制
  static copyData(BuildContext context,content){
    Clipboard.setData(ClipboardData(text: content));
    ToastUtil.showMsg(S.of(context).text_346);
  }


}