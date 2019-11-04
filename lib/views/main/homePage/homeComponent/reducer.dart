import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeComponentState>>{
      HomeComponentAction.action: _onAction,
    },
  );
}

HomeComponentState _onAction(HomeComponentState state, Action action) {
  final HomeComponentState newState = state.clone();
  return newState;
}
