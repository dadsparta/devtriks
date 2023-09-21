import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';

import '../../utilities/models/community_model.dart';



class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key, required this.newsModel}) : super(key: key);
  
  final CommunityModel newsModel;

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
              TitleText(text: newsModel.title),
              const SizedBox(height: 8,),
              SubTitleText(text: newsModel.date == "n" ? "unknown date" : newsModel.date ),
              const SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                    newsModel.image),
              ),
              const SizedBox(height: 20,),
              NewsText(text: newsModel.description)
            ],
          ),
        ),
      ),
    );
  }
}
