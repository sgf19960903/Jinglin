/// 意见反馈Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:32
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class SuggestFeedbackProvider extends BaseProvider {
  TextEditingController suggestInputController = TextEditingController();
  List<XFile> photoList = [];
  int suggestInputLen = 0;//输入意见长度
  int maxInputLen = 500;//最大可输入长度

  //意见输入框监听
  suggestChanged(String value){
    suggestInputLen = value.length;
    notifyListeners();
  }


  //添加或移除图片
  addOrRemovePhoto(XFile photoFile){
    if(photoList.contains(photoFile)) photoList.remove(photoFile);
    else photoList.add(photoFile);
    notifyListeners();
  }


}