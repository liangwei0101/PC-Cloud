import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:pc_cloud/component/stackCard.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(UploadingComponentState state, Dispatch dispatch, ViewService viewService) {
  double currentPage = state.currentPage;
  PageController controller = PageController(initialPage: state.uploadPhotoList.length -1);
    controller.addListener(() {
      dispatch(UploadingComponentActionCreator.onChangeCardAction(controller.page));
    });

  return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("上传中文件",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 36.0,
                      fontFamily: "Calibre-Semibold",
                      letterSpacing: 1.0,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff6e6e),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 6.0),
                      child: Text("Animated",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text("25+ Stories",
                    style: TextStyle(color: Colors.blueAccent))
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              CardScrollWidget(currentPage,state.uploadPhotoList),
              Positioned.fill(
                child: PageView.builder(
                  itemCount: state.uploadPhotoList.length,
                  controller: controller,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      )
  );
}
