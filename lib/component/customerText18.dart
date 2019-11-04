import 'package:flutter/material.dart';

///  Text 字体为18
/// @author Liang Wei
/// date 2019-11-03
class  CustomerText18 extends StatelessWidget {

  String content;

  CustomerText18(String content) {
    this.content = content;
  }

  @override
  Widget build(BuildContext context) {

    return Text(content, style: TextStyle(
        fontSize: 18.0
    ),);
  }

}