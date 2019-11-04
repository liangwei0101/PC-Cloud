import 'package:flutter/material.dart';

///  带渐变的 Container
/// @author Liang Wei
/// date 2019-11-04

class BackgroundContainer extends StatelessWidget {
  BackgroundContainer({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5078E2), Color(0xFF334376)],
          )),
      child: child,
    );
  }
}