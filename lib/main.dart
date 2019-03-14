import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'BugPage.dart';

void main() {
  // NOTE: 图形化调试开关
  debugPaintSizeEnabled = false;
  runApp(FlutterBugApp());
}

class FlutterBugApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bug Demo',
      home: new BugPage(),
    );
  }
}