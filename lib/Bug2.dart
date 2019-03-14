import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Bug2Page extends StatefulWidget {
  final String bug2_1ImgUrl = 'images/bugs/bug2_1.png';
  final String bug2_2ImgUrl = 'images/bugs/bug2_2.png';
  final String bug2_3ImgUrl = 'images/bugs/bug2_3.png';
  
  @override
  State<StatefulWidget> createState() => new _Bug2PageState();
}

class _Bug2PageState extends State<Bug2Page> {
  String bugImgUrl;
  
  @override
  void initState() {
    super.initState();
    bugImgUrl = widget.bug2_1ImgUrl;
  }
  
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('RealRichText 首字符表情偏移'),
    ),
    body: new Stack(
      children: <Widget>[
        new SingleChildScrollView(
          child: new Image.asset(bugImgUrl),
        ),
        new Container(
          alignment: Alignment.bottomCenter,
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                child: new Text('Bug 效果'),
                onPressed: () => setState(() => bugImgUrl = widget.bug2_1ImgUrl),
              ),
              new RaisedButton(
                child: new Text('Bug 效果（表情重叠）'),
                onPressed: () => setState(() => bugImgUrl = widget.bug2_2ImgUrl),
              ),
              new RaisedButton(
                child: new Text('位置对比'),
                onPressed: () => setState(() => bugImgUrl = widget.bug2_3ImgUrl),
              ),
            ],
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