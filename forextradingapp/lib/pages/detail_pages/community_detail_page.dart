import 'package:flutter/cupertino.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';

import '../../utilities/consts/texts.dart';
import '../../utilities/models/community_model.dart';

class CommunityDetailPage extends StatelessWidget {
  CommunityDetailPage({Key? key, required this.communityModel})
      : super(key: key);

  final CommunityModel communityModel;
  late String date =
      communityModel.date == "n" ? "unknown date" : communityModel.date;
  late String author = communityModel.author;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(14),
          color: firstColor,
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Stack(
                      children: [
                        CupertinoButton(
                          alignment: Alignment.topLeft,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            CupertinoIcons.arrow_left,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TitleText(text: communityModel.title),
              const SizedBox(
                height: 8,
              ),
              SubTitleText(text: "$date | $author"),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(communityModel.image),
              ),
              const SizedBox(
                height: 20,
              ),
              NewsText(text: communityModel.description)
            ],
          ),
        ),
      ),
    );
  }
}
