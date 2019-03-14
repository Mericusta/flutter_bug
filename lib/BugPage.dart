import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Bug1.dart';
import 'Bug2.dart';
import 'Bug3.dart';
import 'Bug4.dart';
import 'Bug5.dart';
import 'Bug6.dart';
import 'Bug7.dart';
import 'Test.dart';

class BugPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _BugPageState();
}

class _BugPageState extends State<BugPage> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Flutter Bug List'),
    ),
    body: new ListView(
      children: <Widget>[
        new ListTile(
          title: new Text('Bug Test Page'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new TestPage(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('ios 系统 emoji 表情光标偏移'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug1Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('RealRichText 首字符表情偏移（已修复）'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug2Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('RealRichText 文本表情截断换行'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug3Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('RealRichText 表情不显示（无 BLoC 和 List）'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug4Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('RealRichText 表情不显示（带 BLoC 和 List）'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug5Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('中文设置背景色导致文本内容消失'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug6Page(),
            ),
          ),
        ),
        new ListTile(
          title: new Text('HTML 解析富文本图片布局导致文字被遮挡'),
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Bug7Page(),
            ),
          ),
        ),
      ],
    ),
  );

  @override
  void dispose() {

    super.dispose();
  }
}