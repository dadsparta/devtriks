import 'package:flutter/material.dart';
import 'package:forexthirdaplication/utils/enums/news_constants.dart';

import '../../pages/detail_pages/news_detail_page.dart';
import '../consts/texts.dart';

class NewsPreview extends StatelessWidget {
  const NewsPreview({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(index: index),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(NewsList.stats[index].imageUrl),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ArticleTitleText(text: NewsList.stats[index].title),
            SizedBox(
              height: 5,
            ),
            PreviewText(text: NewsList.stats[index].description),
          ],
        ),
      ),
    );
  }
}
