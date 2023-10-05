import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forexthirdaplication/pages/screens/cash_page/cash_page.dart';
import 'package:forexthirdaplication/pages/screens/info_page/news_page_view.dart';
import 'package:forexthirdaplication/pages/screens/settings_page/settings_page_view.dart';
import 'package:forexthirdaplication/pages/screens/society_page/society_page.dart';
import 'package:forexthirdaplication/pages/screens/tops_screen/tops_screen_view.dart';
import 'package:forexthirdaplication/utils/consts/constant_text.dart';
import 'package:forexthirdaplication/utils/states/news_favorites.dart';
import 'package:provider/provider.dart';

import '../utils/consts/constant_colors.dart';

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
    return Consumer<FavoriteState>(
      builder: (context, favoriteState, child) {
        return Scaffold(
          backgroundColor: firstColor,
          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
            child: FloatingActionButton(
              backgroundColor: secondColor,
              child: const Icon(Icons.support_agent),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (
                      context,
                    ) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        height: 650,
                        color: secondColor,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const ConsultingText(
                                text:
                                    'Do you need our help? Leave your contacts and we will contact you!'),
                            const SizedBox(
                              height: 25,
                            ),
                            const CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/consulting.png'),),
                            const SizedBox(
                              height: 25,
                            ),
                            const TextField(
                              decoration: InputDecoration(hintText: 'Name'),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const TextField(
                              decoration: InputDecoration(hintText: 'Email'),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.send,
                                  color: firstColor,
                                ),
                              ),
                            ),
                            Expanded(child: Text('')),
                          ],
                        ),
                      );
                    });
              },
            ),
          ),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.transparent),
            ),
            backgroundColor: secondColor,
            title: Center(
              child: AppBarText(text: titleOfPage),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.calculate),
                  color: Colors.transparent),
            ],
          ),
          body: Stack(
            children: [
              Container(
                child: isTuped ? pageWidget : const TopsPageView(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.transparent,
                      ),
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
                                      Icons.pie_chart,
                                      color: firstColor,
                                    ),
                                    label: 'Ratings'),
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
                                    label: 'Analysis'),
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
                                        favoriteState.clearFavorite(
                                            favoriteState.commFavorite);
                                        setState(
                                          () {
                                            titleOfPage = "Ratings";
                                          },
                                        );
                                        pageWidget = const TopsPageView();
                                        break;
                                      case 1:
                                        favoriteState.clearFavorite(
                                            favoriteState.commFavorite);
                                        setState(
                                          () {
                                            titleOfPage = "News";
                                          },
                                        );
                                        pageWidget = const MainPageView();
                                        break;
                                      case 2:
                                        favoriteState.clearFavorite(
                                            favoriteState.favorite);
                                        setState(
                                          () {
                                            titleOfPage = "Community";
                                          },
                                        );
                                        pageWidget = const CommunityPageView();
                                        break;
                                      case 3:
                                        setState(
                                          () {
                                            titleOfPage = "Analysis";
                                          },
                                        );
                                        pageWidget = const CurrencyPageView();
                                        break;
                                      case 4:
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
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
