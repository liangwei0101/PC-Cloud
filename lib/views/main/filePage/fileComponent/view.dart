import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FileComponentState state, Dispatch dispatch, ViewService viewService) {
  var assetPathEntityList =  state.assetPathEntityList;

  var buildListView = ListView.builder(
    itemCount: assetPathEntityList.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text(assetPathEntityList[index].name),
        ),
      );
    },
  );

  return Scaffold(body: buildListView);
}
