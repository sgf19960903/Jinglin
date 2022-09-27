import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ExRefreshHeaderView extends StatelessWidget {


  ExRefreshHeaderView({
    this.hintColor,
  });
  Color? hintColor;

  @override
  Widget build(BuildContext context) {
    if(hintColor==null) hintColor = AppColors.successColor;
    return WaterDropHeader(
      waterDropColor: AppColors.successColor,
      complete: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExTextView(S.of(context).text_1,
            color: hintColor!,
            size: 12,
          )
        ],
      ),
      failed: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExTextView(S.of(context).text_2,
            color: hintColor!,
            size: 12,
          )
        ],
      ),
    );
  }
}