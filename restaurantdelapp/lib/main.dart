import 'package:flutter/material.dart';
import 'package:restaurantdelapp/pages/pages_controller.dart';
import 'package:restaurantdelapp/pages/splash_screen/splash_screen.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

bool checkerx = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final RxSharedPreferences prefs = RxSharedPreferences.getInstance();
  final bool? turnOfNotifications = await prefs.getBool("turnOfNotifications");
  final bool? checker = await prefs.getBool("authendicate");

  if (turnOfNotifications == null) {
    await RxSharedPreferences.getInstance()
        .setBool("turnOfNotifications", true);
  }
  if ( checker == true) {
    checkerx = await prefs.getBool("authendicate") as bool;
  }
  runApp(
        const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: checkerx ? "/" : "/splash",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/": (context) => PageControllerModel(),
      },
    );
  }
}
