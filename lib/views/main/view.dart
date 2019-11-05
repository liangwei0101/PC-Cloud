import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'state.dart';

/// 为整个页面加路由
/// @author Liang Wei
/// date 2019-11-03

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
      appBar: AppBar(
      title: Text('PC Cloud'),
    ),
    body: MainPage(),
  );

}
