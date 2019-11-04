import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MyComponentState> buildEffect() {
  return combineEffects(<Object, Effect<MyComponentState>>{
    MyComponentAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyComponentState> ctx) {
}
