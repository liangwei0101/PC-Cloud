import 'package:flutter/material.dart';
import 'package:pc_cloud/views/main/my/myComponent/page.dart';

/// 保持MyPage的状态
/// @author Liang Wei
/// date 2019-11-03
class MyPage extends StatefulWidget {
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context) {
    return MyComponentPage().buildPage(null);
  }

  @override
  bool get wantKeepAlive => true;
}