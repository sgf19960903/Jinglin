
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'log_util.dart';

class CameraUtil {

  //拍照
  static Future<XFile?> takePhoto({double? maxWidth,double? maxHeight}) async{
    // _cameraPermission();

    return await ImagePicker().pickImage(source: ImageSource.camera,maxWidth: maxWidth,maxHeight: maxHeight);
  }

  //从相册选择图片
  static Future<XFile?> openGallery({double? maxWidth,double? maxHeight}) async{
    // _cameraPermission();
    return await ImagePicker().pickImage(source: ImageSource.gallery,maxWidth: maxWidth,maxHeight: maxHeight);
  }


}

