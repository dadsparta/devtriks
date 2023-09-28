import 'package:flutter/material.dart';
import 'package:forexthirdaplication/pages/detail_pages/community_page.dart';
import 'package:forexthirdaplication/utils/enums/community_list.dart';

import '../consts/texts.dart';

class CommunityPreview extends StatelessWidget {
  const CommunityPreview({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CommunityDetailPage(index: index),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(CommunityList.stats[index].imageUrl),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ArticleTitleText(text: CommunityList.stats[index].title),
            const SizedBox(
              height: 5,
            ),
            PreviewText(text: CommunityList.stats[index].description),
          ],
        ),
      ),
    );
  }
}
