import 'dart:io';

import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/global_store/action.dart';
import 'package:pc_cloud/global_store/store.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeComponentState> buildEffect() {
  return combineEffects(<Object, Effect<HomeComponentState>>{
    HomeComponentAction.action: _onAction,
    HomeComponentAction.uploadFile: _onUploadFileAction,
    Lifecycle.initState: _onInitStateAction
  });
}

void _onAction(Action action, Context<HomeComponentState> ctx) {
}

void _onUploadFileAction(Action action, Context<HomeComponentState> ctx) async {
  print('我是上传照片哦@@');

  var globalStore =  GlobalStore.store.getState();
  var assetPathEntityList =  globalStore.assetPathEntityList;

  List<UploadFile> uploadPhotoList = new List();
  List<AssetEntity> assetEntityList = await assetPathEntityList[7].assetList;

  for(var item in assetEntityList) {
    UploadFile uploadFile = new UploadFile();
    var file = await item.file;
    uploadFile.progress = 0;
    uploadFile.file = file;
    uploadFile.filePath = file.path;
    uploadFile.fileName = getFileName(file);
    uploadPhotoList.add(uploadFile);
  }
  GlobalStore.store.dispatch(GlobalActionCreator.onInitUploadingFileList(uploadPhotoList));
  GlobalStore.store.dispatch(GlobalActionCreator.onchangeThemeColor());
}

void _onInitStateAction(Action action, Context<HomeComponentState> ctx) async {
  print('我是home子页面加载！！！');
}

getFileName (File file) {
  var fileNameIndex = file.path.lastIndexOf('/');
  var fileName = file.path.substring(fileNameIndex + 1, file.path.length);
  return fileName;
}

