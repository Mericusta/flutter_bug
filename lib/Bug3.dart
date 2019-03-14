import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'rich_text/CustomRichText.dart';
import 'rich_text/CustomImageSpan.dart';

class Bug3Page extends StatefulWidget {
  final String expressionUrl = 'images/expression/newqqface0000_1.png';
  
  @override
  State<StatefulWidget> createState() => new _Bug3PageState();
}

class _Bug3PageState extends State<Bug3Page> {
  String text;
  
  
  @override
  void initState() {
    super.initState();
    text = '这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！这是测试文本！';
  }
  
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('RealRichText 文本表情截断换行'),
    ),
    body: new Container(
      child: new Center(
        child: new CustomRichText([
          new TextSpan(
            text: text,
          ),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
          new CustomImageSpan(AssetImage(widget.expressionUrl)),
        ]),
      ),
    ),
    floatingActionButton: new FloatingActionButton(
      child: new Text('点我添加文本'),
      onPressed: () => setState(() => text += '这是测试文本！'),
    ),
  );

  @override
  void dispose() {

    super.dispose();
  }
}