import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/consts/colors.dart';

class NewsPageView extends StatefulWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  State<NewsPageView> createState() => _NewsPageViewState();
}

class _NewsPageViewState extends State<NewsPageView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Container(
          color: firstColor,
          child: Text('1'),
        ),
      ),
    );
  }
}
