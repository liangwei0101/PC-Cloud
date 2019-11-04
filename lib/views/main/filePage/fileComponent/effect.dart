import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/global_store/store.dart';
import 'action.dart';
import 'state.dart';

Effect<FileComponentState> buildEffect() {
  return combineEffects(<Object, Effect<FileComponentState>>{
    FileComponentAction.action: _onAction,
    Lifecycle.initState: _onInitStateAction
  });
}

void _onAction(Action action, Context<FileComponentState> ctx) {
}

void _onInitStateAction(Action action, Context<FileComponentState> ctx) {
  var globalStore =  GlobalStore.store.getState();
  var assetPathEntityList =  globalStore.assetPathEntityList;
  ctx.dispatch(FileComponentActionCreator.onLoadFileAction(assetPathEntityList));
  print('我是file子页面加載');
}
