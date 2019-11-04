import 'package:fish_redux/fish_redux.dart';
import 'package:photo_manager/photo_manager.dart';

//TODO replace with your own action
enum FileComponentAction { action, loadFile }

class FileComponentActionCreator {

  static Action onAction() {
    return const Action(FileComponentAction.action);
  }

  static Action onLoadFileAction(List<AssetPathEntity> assetPathEntityList) {
    return Action(FileComponentAction.loadFile,payload: assetPathEntityList);
  }
}
