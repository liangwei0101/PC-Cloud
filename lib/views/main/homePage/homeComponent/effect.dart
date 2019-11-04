import 'package:fish_redux/fish_redux.dart';
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
}

void _onInitStateAction(Action action, Context<HomeComponentState> ctx) async {
  print('我是home子页面加载！！！');
}

