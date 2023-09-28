import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forexthirdaplication/pages/screens/community_page/community_page_view.dart';
import 'package:forexthirdaplication/pages/screens/currency_page/currency_page_view.dart';
import 'package:forexthirdaplication/pages/screens/news_page/main_page_view.dart';
import 'package:forexthirdaplication/pages/screens/settings_page/settings_page_view.dart';
import 'package:forexthirdaplication/utils/consts/texts.dart';

import '../utils/consts/colors.dart';

class PageControllerModel extends StatefulWidget {
  const PageControllerModel({
    Key? key,
  }) : super(key: key);

  @override
  State<PageControllerModel> createState() => _PageControllerModelState();
}

class _PageControllerModelState extends State<PageControllerModel> {
  Widget? pageWidget;
  bool isTuped = false;
  int currentIndexNavBar = 0;
  String titleOfPage = "News";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      appBar: AppBar(
        backgroundColor: secondColor,
        title: Center(
          child: AppBarText(text: titleOfPage),
        ),
      ),
      body: Container(
        child: isTuped ? pageWidget : const MainPageView(),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: secondColor,
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  selectedItemColor: textColor,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.square_stack_3d_up_fill,
                          color: firstColor,
                        ),
                        label: 'News'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.person_2,
                          color: firstColor,
                        ),
                        label: 'Community'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.bar_chart,
                          color: firstColor,
                        ),
                        label: 'Crypto'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.settings_outlined,
                          color: firstColor,
                        ),
                        label: 'Settings'),
                  ],
                  currentIndex: currentIndexNavBar,
                  onTap: (value) {
                    return setState(
                      () {
                        isTuped = true;
                        currentIndexNavBar = value;
                        switch (value) {
                          case 0:
                            setState(
                              () {
                                titleOfPage = "News";
                              },
                            );
                            pageWidget = const MainPageView();
                            break;
                          case 1:
                            setState(
                              () {
                                titleOfPage = "Community";
                              },
                            );
                            pageWidget = const CommunityPageView();
                            break;
                          case 2:
                            setState(
                              () {
                                titleOfPage = "Crypto";
                              },
                            );
                            pageWidget = const CurrencyPageView();
                            break;
                          case 3:
                            setState(
                              () {
                                titleOfPage = "Settings";
                              },
                            );
                            pageWidget = const SettingsPageView();
                            break;
                          default:
                            setState(
                              () {
                                titleOfPage = "News";
                              },
                            );
                            pageWidget = const MainPageView();
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
