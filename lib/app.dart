import 'package:flutter/material.dart' hide Action;
import 'package:pc_cloud/routers.dart';

///  app
/// @author Liang Wei
/// date 2019-11-04

Widget app() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    home:routes.buildPage('main', null),

    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },

  );
}
