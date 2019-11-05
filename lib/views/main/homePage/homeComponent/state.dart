import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/global_store/state.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';

class HomeComponentState implements GlobalBaseState, Cloneable<HomeComponentState> {

  @override
  HomeComponentState clone() {
    return HomeComponentState()
      ..themeColor = this.themeColor
      ..uploadingFileList = this.uploadingFileList
      ..assetPathEntityList = this.assetPathEntityList;
  }

  @override
  List<AssetPathEntity> assetPathEntityList;

  @override
  Color themeColor;

  @override
  List<UploadFile> uploadingFileList;
}

HomeComponentState initState(Map<String, dynamic> args) {
  return HomeComponentState();
}
