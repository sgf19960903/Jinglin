import 'package:flutter/material.dart';
import 'package:bittchainpro/common/res/res_path.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ExRefreshFooterView extends StatelessWidget {

  ExRefreshFooterView({
    this.hintColor
  });

  Color? hintColor;

  @override
  Widget build(BuildContext context) {
    if(hintColor==null) hintColor = AppColors().commonTextColor;
    return ClassicFooter(
      loadStyle: LoadStyle.ShowWhenLoading,
      noDataText: S.of(context).text_3,
      loadingText: S.of(context).text_4,
      failedText: S.of(context).text_2,
      idleText: S.of(context).text_0,
      textStyle: TextStyle(
          fontSize: 11,
          color: hintColor
      ),
    );

  }

}