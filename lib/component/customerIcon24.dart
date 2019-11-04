
import 'package:flutter/material.dart';

///  自定义Icon24
/// @author Liang Wei
/// date 2019-11-04

class CustomerIcon24 extends StatelessWidget {

  IconData icons;

  CustomerIcon24(IconData icon){
    this.icons = icon;
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      icons,
      size: 24.0,
    );
  }

}
