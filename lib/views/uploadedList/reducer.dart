import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<UploadedListState> buildReducer() {
  return asReducer(
    <Object, Reducer<UploadedListState>>{
      UploadedListAction.action: _onAction,
    },
  );
}

UploadedListState _onAction(UploadedListState state, Action action) {
  final UploadedListState newState = state.clone();
  return newState;
}
