import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'rich_text/CustomRichText.dart';
import 'rich_text/CustomImageSpan.dart';

class Bug4Page extends StatefulWidget {
  final String expressionUrl = 'images/food00.jpeg';
  
  @override
  State<StatefulWidget> createState() => new _Bug4PageState();
}

class _Bug4PageState extends State<Bug4Page> {
  List<TextSpan> textSpanList;
  int expressionCount;
  
  @override
  void initState() {
    super.initState();
    textSpanList = new List<TextSpan>();
    textSpanList.add(new TextSpan(
      text: '这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！',
    ));
    expressionCount = 0;
  }
  
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('RealRichText 添加表情不显示（无 BLoC 和 List）'),
    ),
    body: new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text(
                '表情数：$expressionCount'
              ),
            ],
          ),
          new CustomRichText(textSpanList)
        ],
      ),
    ),
    floatingActionButton: new FloatingActionButton(
      child: new Text('点我添加表情'),
      onPressed: () => setState(() {
        textSpanList.add(new CustomImageSpan(AssetImage(widget.expressionUrl)));
        expressionCount++;
      }),
    ),
  );

  @override
  void dispose() {

    super.dispose();
  }
}