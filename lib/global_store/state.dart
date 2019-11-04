import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';

abstract class GlobalBaseState {
  Color get themeColor;
  set themeColor(Color color);

  List<AssetPathEntity> get assetPathEntityList;
  set assetPathEntityList(List<AssetPathEntity> assetPathEntityList);

  List<UploadFile> get uploadingFileList;
  set uploadingFileList(List<UploadFile> uploadingFileList);
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Color themeColor;

  /// 所有资源list
  @override
  List<AssetPathEntity> assetPathEntityList;

  /// 正在上传文件列表
  @override
  List<UploadFile> uploadingFileList;

  /// 是否上传标志
  bool isStartUpload = false;

  @override
  GlobalState clone() {
    return GlobalState();
  }
}
