import 'package:flutter/material.dart';
import 'package:pc_cloud/component/customerIcon24.dart';
import 'filePage/filePage.dart';
import 'homePage/homePage.dart';
import 'my/myPage.dart';
import 'uploading/uploadingPage.dart';

/// MainPage 状态保持
/// @author Liang Wei
/// date 2019-11-03
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with  SingleTickerProviderStateMixin {

  TabController _controller;
  int _currentIndex = 0;

  var bottomTabs = [
    BottomNavigationBarItem(
        title: Text('首页'),
        icon: CustomerIcon24(Icons.home)),
    BottomNavigationBarItem(
        title: Text('文件'),
        icon: CustomerIcon24(Icons.sd_storage)),
    BottomNavigationBarItem(
        title: Text('上传'),
        icon: CustomerIcon24(Icons.backup)),
    BottomNavigationBarItem(
        title: Text('我的'),
        icon: CustomerIcon24(Icons.account_circle)),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: bottomTabs.length,vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _bottomNavBarClick,
          items: bottomTabs),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(), //禁止滚动
          controller: _controller,
          children: [
            HomePage(),
            FilePage(),
            UploadingPage(),
            MyPage(),
          ]),
    );
  }


  _bottomNavBarClick(index) {
    setState(() {
      _currentIndex = index;
    });
    _controller.animateTo(_currentIndex);
  }

}