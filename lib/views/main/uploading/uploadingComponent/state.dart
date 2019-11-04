import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:pc_cloud/model/uploadFile.dart';
import 'package:photo_manager/photo_manager.dart';

class UploadingComponentState implements Cloneable<UploadingComponentState> {

  List<AssetPathEntity> assetPathEntityList = new List();

  List<UploadFile> uploadPhotoList = new List();

  PageController controller;

  double currentPage = 0.0;

  int count = 0;

  @override
  UploadingComponentState clone() {
    return UploadingComponentState()
      ..count = this.count
      ..controller = this.controller
      ..currentPage = this.currentPage
      ..uploadPhotoList = this.uploadPhotoList
      ..assetPathEntityList = this.assetPathEntityList;
  }
}

UploadingComponentState initState(Map<String, dynamic> args) {
  return UploadingComponentState();
}
