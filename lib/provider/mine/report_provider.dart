/// 举报Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:32
/// @Description TODO

import 'package:image_picker/image_picker.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class ReportProvider extends BaseProvider {
  List<XFile> photoList = [];
  int reportTypeIndex = -1;//举报类型选中位置


  //添加或移除图片
  addOrRemovePhoto(XFile photoFile){
    if(photoList.contains(photoFile)) photoList.remove(photoFile);
    else photoList.add(photoFile);
    notifyListeners();
  }


  //修改举报类型位置
  changeReportTypeIndex(index){
    if(reportTypeIndex==index) reportTypeIndex = -1;
    else reportTypeIndex = index;
    notifyListeners();
  }


}