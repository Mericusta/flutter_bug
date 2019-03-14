import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Bug1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Bug1PageState();
}

class _Bug1PageState extends State<Bug1Page> {
  @override
  void initState() {
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('ios 系统 emoji 表情光标偏移'),
    ),
    body: new Container(
      child: new Center(
        child: new TextField(
          
        ),
      ),
    ),
  );

  @override
  void dispose() {

    super.dispose();
  }
}