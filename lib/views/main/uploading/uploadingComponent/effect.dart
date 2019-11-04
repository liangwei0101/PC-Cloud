import 'dart:io';
import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/global_store/store.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';
import 'action.dart';
import 'state.dart';

Effect<UploadingComponentState> buildEffect() {
  return combineEffects(<Object, Effect<UploadingComponentState>>{
    UploadingComponentAction.action: _onAction,
    Lifecycle.initState: _onInitStateAction
  });
}

void _onAction(Action action, Context<UploadingComponentState> ctx) {
}

void _onInitStateAction(Action action, Context<UploadingComponentState> ctx) async {

  print('我是上传子页面初始化');

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

  ctx.dispatch(UploadingComponentActionCreator.onLoadFileAction(assetPathEntityList,uploadPhotoList));
}

getFileName (File file) {
  var fileNameIndex = file.path.lastIndexOf('/');
  var fileName = file.path.substring(fileNameIndex + 1, file.path.length);
  return fileName;
}

