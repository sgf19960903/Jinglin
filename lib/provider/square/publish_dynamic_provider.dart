/// 发布动态Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:34
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/provider/base/base_provider.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';


class PublishDynamicProvider extends BaseProvider {
  TextEditingController contentController = TextEditingController();
  List<AssetEntity> fileList = [];
  AssetType? currentListType;
  int reportTypeIndex = -1;//举报类型选中位置
  int inputContentLen = 0;//内容数量
  int maxInputLen = 300;//最大内容数量
  bool canPublish = false;//是否能发布

  //内容监听
  textChanged(String value){
    inputContentLen = value.length;
    canPublish = inputContentLen>0||fileList.length>0;
    notifyListeners();
  }


  //添加或移除图片
  addOrRemovePhoto(List<AssetEntity> entityList){
    if(entityList.length==1) {
      AssetEntity entity = entityList[0];
      if(fileList.contains(entity)) fileList.remove(entity);
      else fileList.add(entity);
    }else fileList.addAll(entityList);
    if(fileList.length>0) currentListType = fileList[0].type;
    else currentListType = null;
    canPublish = inputContentLen>0||fileList.length>0;
    notifyListeners();
  }


  //修改举报类型位置
  changeReportTypeIndex(index){
    if(reportTypeIndex==index) reportTypeIndex = -1;
    else reportTypeIndex = index;
    notifyListeners();
  }



  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }


}