import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/community_constants.dart';
import 'package:forextradingapp/utilities/samples/icon_star.dart';

import '../../pages/detail_pages/community_detail_page.dart';
import '../consts/texts.dart';

class CommunityCard extends StatelessWidget {
  CommunityCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      child: CupertinoButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => CommunityDetailPage(
                  communityModel: CommunityConstants.communities[index]),
            ),
          );
        },
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  children: [
                    Image.network(CommunityConstants.communities[index].image),
                    const Align(
                      alignment: Alignment.topRight,
                      child: IconStar(),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SubTitleText(text: 'by ${CommunityConstants.communities[index].author}'),
            const SizedBox(
              height: 8,
            ),
            TitleText(text: CommunityConstants.communities[index].title),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 38,
              child: SubTitleText(
                  text: CommunityConstants.communities[index].description),
            )
          ],
        ),
      ),
    );
  }
}
