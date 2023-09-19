
import 'package:flutter/cupertino.dart';
import 'package:forextradingapp/pages/main_page/main_page_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
