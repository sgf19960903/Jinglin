import 'package:flutter/material.dart';
import 'package:bittchainpro/common/res/res_path.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:bittchainpro/ui/widgets/ex_text_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ExRefreshHeaderView extends StatelessWidget {


  ExRefreshHeaderView({
    this.hintColor,
  });
  Color? hintColor;

  @override
  Widget build(BuildContext context) {
    if(hintColor==null) hintColor = AppColors().commonGreenColor;
    return WaterDropHeader(
      waterDropColor: AppColors().commonGreenColor,
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