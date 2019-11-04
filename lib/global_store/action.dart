
import 'package:fish_redux/fish_redux.dart';
import 'package:photo_manager/photo_manager.dart';

///  全局store的Action
/// @author Liang Wei
/// date 2019-11-02
enum GlobalAction { changeThemeColor, saveAssetPathEntityList }

class GlobalActionCreator {
  static Action onchangeThemeColor() {
    return const Action(GlobalAction.changeThemeColor);
  }

  static Action onSaveAssetPathEntityList(List<AssetPathEntity> assetPathEntityList) {
    return Action(GlobalAction.saveAssetPathEntityList,payload: assetPathEntityList);
  }
}