import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'rich_text/CustomRichText.dart';
import 'rich_text/CustomImageSpan.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'bloc/BLoCProvider.dart';

class Bug5Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Bug5PageState();
}

class _Bug5PageState extends State<Bug5Page> {
  Bug5BLoC bug5BLoC;

  @override
  void initState() {
    super.initState();
    bug5BLoC = new Bug5BLoC();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RealRichText 表情不显示（带 BLoC 和 List）'),
      ),
      body: new CustomScrollView(
        slivers: <Widget>[
          new StreamBuilder(
            stream: bug5BLoC.outExpressionList,
            initialData: ['food01'],
            builder: (BuildContext context, AsyncSnapshot<List<String>> stringListSnapshot) => new SliverList(
              delegate: new SliverChildListDelegate(
                () {
                  List<Widget> commentList = new List<Widget>();
                  for (int index = 0; index != stringListSnapshot.data.length; ++index) {
                    commentList.add(
                      new Container(
                        child: new CustomRichText([
                          new CustomImageSpan(
                            new AssetImage('images/${stringListSnapshot.data[index]}.jpeg'),
                            imageWidth: 14.0,
                            imageHeight: 14.0,
                          ),
                        ]),
                      ),
                    );
                  }
                  return commentList;
                }()
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Text('点我添加表情'),
        onPressed: () => bug5BLoC.addString('food0${(new DateTime.now().millisecond % 6)}'),
      ),
    );
  }
}

class Bug5BLoC implements ModelBLoCBase {
  List<String> expressionList;

  final BehaviorSubject<List<String>> expressionListStreamController = new BehaviorSubject<List<String>>();
  Sink<List<String>> get inExpressionList => expressionListStreamController.sink;
  Stream<List<String>> get outExpressionList => expressionListStreamController.stream;

  Bug5BLoC() {
    init();
  }

  void init() {
    expressionList = ['newqqface0000_1'];
  }

  void addString(String string) {
    expressionList.add(string);
    inExpressionList.add(expressionList);
  }

  @override
  void dispose() {
    expressionListStreamController.close();
  }
}