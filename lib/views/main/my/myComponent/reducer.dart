import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyComponentState>>{
      MyComponentAction.action: _onAction,
    },
  );
}

MyComponentState _onAction(MyComponentState state, Action action) {
  final MyComponentState newState = state.clone();
  return newState;
}
