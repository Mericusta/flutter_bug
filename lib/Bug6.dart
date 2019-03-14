import 'package:flutter/material.dart';

class Bug6Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Bug6PageState();
}

class _Bug6PageState extends State<Bug6Page> {
  @override
  Widget build(BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('中文设置背景色导致文本内容消失'),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text('条件1：字符串中含有中文'),
          new Text('条件2：字符串中含有 ascii码 与 - (ascii 45) 符号组合的排列'),
          new Text.rich(
            new TextSpan(
              text: 'asdasd*-*Iamabigbigboy',
              style: new TextStyle(
                background: new Paint()..color = new Color(0xFFff9900),
              ),
            ),
          ),
          new Text.rich(
            new TextSpan(
              text: '中文asdasd(-)Iamabigbigboy中文',
              style: new TextStyle(
                background: new Paint()..color = new Color(0xFFff9900),
              ),
            ),
          ),
          new Text.rich(
            new TextSpan(
              text: '中文-中文',
              style: new TextStyle(
                background: new Paint()..color = new Color(0xFFff9900),
              ),
            ),
          ),
          new Text.rich(
            new TextSpan(
              text: '5-3',
              style: new TextStyle(
                background: new Paint()..color = new Color(0xFFff9900),
              ),
            ),
          ),
          // NOTE: 5-3
          new RichText(
            text: new TextSpan(
              text: """在食物语中，第五章第三关是一个比较是一个非常难打的关卡，很多人不知道 5-3 怎么过，其实大家掌握好方法的话还是比较容易的，一起来看看 5-3 的攻略吧。""",
              style: new TextStyle(
                background: new Paint()..color = new Color(0xFFff9900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}