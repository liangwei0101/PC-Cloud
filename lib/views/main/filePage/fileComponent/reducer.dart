import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FileComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<FileComponentState>>{
      FileComponentAction.action: _onAction,
      FileComponentAction.loadFile: _onLoadFileAction
    },
  );
}

FileComponentState _onAction(FileComponentState state, Action action) {
  final FileComponentState newState = state.clone();
  return newState;
}

FileComponentState _onLoadFileAction(FileComponentState state, Action action) {
  final FileComponentState newState = state.clone();

  newState.assetPathEntityList = action.payload;

  return newState;
}