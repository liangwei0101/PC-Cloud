import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeComponentState state, Dispatch dispatch, ViewService viewService) {
 print('我是渲染啊！！！！');
  return Scaffold(
    appBar: AppBar(
      backgroundColor: state.themeColor,
      title: const Text('Todo'),
    ),
    body: Text('pppppp'),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        dispatch(HomeComponentActionCreator.onUploadFileAction());
      },
      tooltip: 'Increment',
      child: Icon(Icons.cloud_upload),
    ),
  );
}
