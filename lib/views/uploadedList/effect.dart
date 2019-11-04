import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<UploadedListState> buildEffect() {
  return combineEffects(<Object, Effect<UploadedListState>>{
    UploadedListAction.action: _onAction,
    Lifecycle.initState: _onInitStateAction
  });
}

void _onAction(Action action, Context<UploadedListState> ctx) {
}

void _onInitStateAction(Action action, Context<UploadedListState> ctx) {
  print('我是陈叔叔');
}

