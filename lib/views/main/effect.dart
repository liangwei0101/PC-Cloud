import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/global_store/store.dart';
import 'package:photo_manager/photo_manager.dart';
import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
    Lifecycle.initState: _onInitStateAction
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}

void _onInitStateAction(Action action, Context<MainState> ctx) async {
  var globalStore =  GlobalStore.store.getState();
  // initState获取照片权限
  var result = await PhotoManager.requestPermission();
  if(result) {
    var assetPathEntityList = await PhotoManager.getImageAsset();
    globalStore.assetPathEntityList = assetPathEntityList;
  }
}
