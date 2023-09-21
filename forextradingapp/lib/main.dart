import 'package:flutter/cupertino.dart';
import 'package:forextradingapp/pages/main_page/main_page_model.dart';
import 'package:forextradingapp/utilities/samples/onboarding.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final RxSharedPreferences prefs = RxSharedPreferences.getInstance();
  final bool? turnOfNotifications = await prefs.getBool("turnOfNotifications");
  if (turnOfNotifications == null) {
    await RxSharedPreferences.getInstance()
        .setBool("turnOfNotifications", true);
  }
  final bool? authendicate = await prefs.getBool("authendicate");
  runApp( MyApp(
    authendicate: authendicate ?? false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.authendicate});

  final bool authendicate;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      initialRoute: authendicate ? "/main" : "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/main": (context) => const MainPage(),
      },
    );
  }
}
