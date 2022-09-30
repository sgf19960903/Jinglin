/// 首页Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:23
/// @Description TODO

import 'package:card_swiper/card_swiper.dart';
import 'package:jinglin/provider/base/base_provider.dart';

class HomeProvider extends BaseProvider {
  int listTabIndex = 0;//

  //更改列表Tab位置
  changeListTabIndex(index){
    listTabIndex = index;
    notifyListeners();
  }


}