import 'package:flutter/material.dart';
import 'package:pc_cloud/views/main/uploading/uploadingComponent/page.dart';

/// 保持MyPage的状态
/// @author Liang Wei
/// date 2019-11-03

class UploadingPage extends StatefulWidget {
  _UploadingPageState createState() => _UploadingPageState();
}

class _UploadingPageState extends State<UploadingPage> with AutomaticKeepAliveClientMixin{

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return UploadingComponentPage().buildPage(null);
  }

  @override
  bool get wantKeepAlive => true;
}