import 'package:flutter/material.dart';
import 'package:forexthirdaplication/utils/consts/colors.dart';
import 'package:forexthirdaplication/utils/consts/texts.dart';
import 'package:forexthirdaplication/utils/enums/community_list.dart';

class CommunityDetailPage extends StatefulWidget {
  const CommunityDetailPage({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<CommunityDetailPage> createState() => _State();
}

class _State extends State<CommunityDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondColor,
        leading: IconButton(
          onPressed: () {
            return Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [Container(height: 20, width: 20,)],
        title: const Center(
          child: AppBarText(text: 'Community'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        color: firstColor,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(CommunityList.stats[widget.index].imageUrl),
            ),
            SizedBox(
              height: 20,
            ),
            ArticleTitleTextDetail(
                text: CommunityList.stats[widget.index].title),
            SizedBox(
              height: 20,
            ),
            SimpleText(text: CommunityList.stats[widget.index].description)
          ],
        ),
      ),
    );
  }
}
