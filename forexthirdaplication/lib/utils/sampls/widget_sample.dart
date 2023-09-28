import 'package:flutter/material.dart';

import '../consts/texts.dart';

class WidgetApp extends StatelessWidget {
  WidgetApp({Key? key, required this.title, required this.subText})
      : super(key: key);
  String title;
  String subText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SimpleText(text: title),
          WidgetCountText(text: subText),
        ],
      ),
    );
  }
}
