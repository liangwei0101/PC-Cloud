import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<UploadingComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<UploadingComponentState>>{
      UploadingComponentAction.action: _onAction,
      UploadingComponentAction.loadFile: _onLoadFileAction,
      UploadingComponentAction.changeCard: _onChangeCardAction,
    },
  );
}

UploadingComponentState _onAction(UploadingComponentState state, Action action) {
  final UploadingComponentState newState = state.clone();
  return newState;
}

UploadingComponentState _onLoadFileAction(UploadingComponentState state, Action action) {
  final UploadingComponentState newState = state.clone();

  newState.assetPathEntityList = action.payload[0];
  newState.uploadPhotoList = action.payload[1];
  newState.currentPage = 0;
  newState.controller = PageController(initialPage: newState.uploadPhotoList.length -1);

  return newState;
}

UploadingComponentState _onChangeCardAction(UploadingComponentState state, Action action) {
  final UploadingComponentState newState = state.clone();

  newState.currentPage = action.payload;

  return newState;
}

