import 'package:flutter/material.dart';
import 'package:real_rich_text/real_rich_text.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TestPageState();
}

class TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
      title: new Text('Bug Test Page'),
      ),
      body: new SingleChildScrollView(
        child: new RealRichText([
          new TextSpan(
            text: '食物语又双叒叕测试了，嘴上说着不想肝佛系等公测，还是口嫌体正直去下载了，没有一个人能逃过真香定律！！！',
          ),
          new ImageSpan(
            NetworkImage('https://imgsa.baidu.com/forum/w%3D580/sign=0d2d11df3d4e251fe2f7e4f09787c9c2/fd8b848aa61ea8d3b106c7e19a0a304e241f58a5.jpg'),
            imageWidth: 350,
            imageHeight: 350,
          ),
          new ImageSpan(
            NetworkImage('https://imgsa.baidu.com/forum/w%3D580/sign=cd9543891d3853438ccf8729a311b01f/1b48b0013af33a8711efb0ffcb5c10385143b5cc.jpg'),
            imageWidth: 252,
            imageHeight: 237,
          ),
        ]),
      ),
    );
  }
}