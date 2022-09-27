import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ExRefreshFooterView extends StatelessWidget {

  ExRefreshFooterView({
    this.hintColor
  });

  Color? hintColor;

  @override
  Widget build(BuildContext context) {
    if(hintColor==null) hintColor = AppColors.textColor;
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