import 'package:flutter/material.dart';
import 'package:forexthirdaplication/utils/consts/colors.dart';
import 'package:forexthirdaplication/utils/consts/texts.dart';
import 'package:forexthirdaplication/utils/enums/news_constants.dart';
import 'package:forexthirdaplication/utils/sampls/news_article_preview.dart';
import 'package:forexthirdaplication/utils/sampls/widget_sample.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      color: firstColor,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              WidgetApp(title: 'Total', subText: NewsList.stats.length.toString()),
              Container(
                width: 1,
                height: 20,
                decoration: const BoxDecoration(color: Color(0x882C2B2B)),
              ),
              WidgetApp(title: 'Viewed', subText: '4'),
              Container(
                width: 1,
                height: 20,
                decoration: const BoxDecoration(color: Color(0x882C2B2B)),
              ),
              WidgetApp(title: 'Favorite', subText: '0')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: NewsList.stats.length,
            itemBuilder: (context, index) {
              return NewsPreview(index: index--);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
          )
        ],
      ),
    );
  }
}
