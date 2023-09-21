import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/community_constants.dart';
import 'package:forextradingapp/utilities/samples/news_card.dart';
import 'package:forextradingapp/utilities/samples/widget_card.dart';
import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';

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
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
          color: firstColor,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                child: PageText(text: "News"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  WidgetCard(
                    title: 'Total',
                    count: '8',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  WidgetCard(
                    title: 'Viewed',
                    count: '4',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  WidgetCard(
                    title: 'Favourites',
                    count: '0',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(
                  0xFF1F2257,
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: CommunityConstants.communities.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return NewsCard(index: index);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
