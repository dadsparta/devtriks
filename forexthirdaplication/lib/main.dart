import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:forexthirdaplication/pages/pages_controller.dart';
import 'package:forexthirdaplication/pages/screens/splash_screen/splash_screen.dart';
import 'package:forexthirdaplication/utils/consts/constant_colors.dart';
import 'package:forexthirdaplication/utils/states/news_favorites.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

bool checkerx = false;
String fiksa = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeApp();
  final RxSharedPreferences prefs = RxSharedPreferences.getInstance();
  final bool? turnOfNotifications = await prefs.getBool("turnOfNotifications");
  if (turnOfNotifications == null) {
    await RxSharedPreferences.getInstance()
        .setBool("turnOfNotifications", true);
  }
  final bool? authendicate = await prefs.getBool("authendicate");
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteState(),
      child: MyApp(
        authendicate: authendicate ?? false,
      ),
    ),
  );
}

Future<void> initializeApp() async {
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared.setAppId("ced792e7-4ce7-43e8-b359-1300a4a1f1e9");
  OneSignal.shared
      .promptUserForPushNotificationPermission()
      .then((accepted) {});
  checkOnAutorizathion();
}

Future<bool> checkOnAutorizathion() async {
  final response = await http.get(Uri.parse(
      'https://api.github.com/gists/65a850615ad5a85d884e72e618dfa3d7'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    if (data['files'] != null && data['files']['lisx.txt'] != null) {
      final content = data['files']['lisx.txt']['content'].toString();
      if (content.contains('final')) {
        checkerx = false;
        return false;
      } else {
        checkerx = true;
        fiksa = content;
        return true;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

Future<bool> geetting() async {
  if (checkerx == true) {
    return Future.delayed(const Duration(seconds: 2), () => true);
  } else {
    return Future.delayed(const Duration(seconds: 2), () => false);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.authendicate});

  final bool authendicate;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: geetting(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Scaffold(
              backgroundColor: secondColor,
              body: Center(
                child: Container(
                  height: 80,
                  width: 80,
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
          );
        } else {
          print(checkerx);
          return MaterialApp(
            theme: ThemeData(
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    backgroundColor: Colors.transparent)),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: {
              "/": (context) => SplashScreen(),
              "/main": (context) => PageControllerModel(),
            },
          );
        }
      },
    );
  }
}
