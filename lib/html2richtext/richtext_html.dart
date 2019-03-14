library richtext_html;

import 'package:flutter/material.dart';
import 'html_parser.dart';
import 'styles/size_attribute.dart';

// NOTE: 视为 HTML 的 body 部分
class HtmlRichText extends StatelessWidget {
  HtmlRichText({
    Key key,
    // NOTE: HTML 中的内容
    @required this.data,
    // NOTE: body 的内边距
    this.padding,
    // NOTE: body 的背景色
    this.backgroundColor,
    // NOTE: 所有文本在 HTML 中的外部样式
    this.defaultTextStyle = const TextStyle(color: Colors.black),
  }) : super(key: key);

  final String             data;
  final EdgeInsetsGeometry padding;
  final Color              backgroundColor;
  final TextStyle          defaultTextStyle;

  @override
  Widget build(BuildContext context) {
    DeviceAttribute.screenWidth      = MediaQuery.of(context).size.width;
    DeviceAttribute.devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Container(
      padding: padding,
      color: backgroundColor,
      child: DefaultTextStyle.merge(
        style: defaultTextStyle,
        child: Wrap(
          alignment: WrapAlignment.start,
          children: () {
            try {
              return parse(data);
            } catch(e) {
              print(e);
              return [];
            }
          }(),
        ),
      ),
    );
  }
}