///  stack 卡片
/// @author Liang Wei
/// date 2019-10-31

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pc_cloud/model/uploadFile.dart';

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

// 对外可用组件
class StackCard extends StatefulWidget {

  List<UploadFile> fileList;

  StackCard(List<UploadFile> params){
    this.fileList =params;
  }

  @override
  _StackCardState createState() => _StackCardState(fileList);
}

class _StackCardState extends State<StackCard> {

  List<UploadFile> uploadFileList;
  double currentPage;

  _StackCardState(List<UploadFile> fileList){
    this.uploadFileList = fileList;
    this.currentPage = (fileList.length -1).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: uploadFileList.length -1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                CardScrollWidget(currentPage,uploadFileList),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: uploadFileList.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
          ],
        )
    );
  }

}

// 滚动card
class CardScrollWidget extends StatelessWidget {
  double currentPage = 0;

  final double padding = 20.0;

  final double  verticalInset = 20.0;

  final List<UploadFile> uploadFileList;

  CardScrollWidget(this.currentPage,this.uploadFileList);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < uploadFileList.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.file(uploadFileList[i].file, fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(uploadFileList[i].fileName,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("上传：" + Random().nextInt(100).toString() + '%',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}