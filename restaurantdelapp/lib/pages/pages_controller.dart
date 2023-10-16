import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurantdelapp/pages/qr_page/qr_page_view.dart';
import 'package:restaurantdelapp/pages/settings_page/settings_page_view.dart';


import '../utils/consts/colors.dart';
import 'menu_page/menu_page_view.dart';
import 'order_page/order_page_view.dart';

class PageControllerModel extends StatefulWidget {
  PageControllerModel({Key? key}) : super(key: key);


  @override
  State<PageControllerModel> createState() => _PageControllerModelState();
}

class _PageControllerModelState extends State<PageControllerModel> {

  Widget? pageWidget;
  bool isTuped = false;
  int currentIndexNavBar = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: firstColor,
      body: Container(
        child: isTuped ? pageWidget : MenuPageView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: firstColor,
        unselectedItemColor: textColor,
        selectedItemColor: secondColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: secondColor),
              label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner, color: secondColor), label: 'Scan QR'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel, color: secondColor), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, color: secondColor), label: 'Settings'),

        ],
        currentIndex: currentIndexNavBar,
        onTap: (value) {
          return setState(
                () {
              isTuped = true;
              currentIndexNavBar = value;
              switch (value) {
                case 0:
                  pageWidget = MenuPageView();
                  break;
                case 1:
                  pageWidget = QRPageView();
                  break;
                case 2:
                  pageWidget = OrderPageView();
                  break;
                case 3:
                  pageWidget = SettingsPageView();
                  break;
                default:
                  pageWidget = MenuPageView();
              }
            },
          );
        },
      ),
    );
  }
}
