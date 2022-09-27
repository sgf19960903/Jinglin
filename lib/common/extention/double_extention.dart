
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExtention on double {

  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);

  double get ssp => ScreenUtil().setSp(this);



}