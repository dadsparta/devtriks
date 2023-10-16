import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurantdelapp/pages/detail_pages/about_restaurant.dart';

import '../../utils/consts/texts.dart';
import '../detail_pages/ui_view.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const AppBarText(text: 'SETTINGS'),
            const SizedBox(
              height: 40,
            ),
            ListTile(
              title: const Text('Privacy Police'),
              leading: const Icon(CupertinoIcons.lock_circle),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UiViewSettings(
                      url:
                          'https://docs.google.com/document/d/1ECkr13MXcSZRzh5HLCodJXK4IQ77yfGR8xcjXKNlfaw/edit?usp=sharing',
                      name: 'Privacy Policy',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Terms of Use'),
              leading: const Icon(CupertinoIcons.chat_bubble_text),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UiViewSettings(
                      url:
                          'https://docs.google.com/document/d/1ECkr13MXcSZRzh5HLCodJXK4IQ77yfGR8xcjXKNlfaw/edit?usp=sharing',
                      name: 'Privacy Policy',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About our restaurant'),
              leading: Icon(CupertinoIcons.doc_append),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutRestaurantPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Rate our app in the AppStore'),
              leading: Icon(CupertinoIcons.heart),
            ),
          ],
        ),
      ),
    );
  }
}
