import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';

//TODO replace with your own action
enum UploadingComponentAction { action , loadFile, loadPhoto, changeCard }

class UploadingComponentActionCreator {

  static Action onAction() {
    return const Action(UploadingComponentAction.action);
  }

  static Action onLoadFileAction(List<AssetPathEntity> assetPathEntityList, List<UploadFile> uploadPhotoList) {
    var arr = [assetPathEntityList,uploadPhotoList];
    return Action(UploadingComponentAction.loadFile,payload: arr);
  }

  static Action onLoadPhotoAction(List<UploadFile> uploadPhotoList) {
    return Action(UploadingComponentAction.loadPhoto,payload: uploadPhotoList);
  }

  static Action onChangeCardAction(double page) {
    return Action(UploadingComponentAction.changeCard,payload: page);
  }
}
