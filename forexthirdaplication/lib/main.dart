import 'package:flutter/material.dart';
import 'package:forexthirdaplication/pages/pages_controller.dart';
import 'package:forexthirdaplication/utils/consts/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => PageControllerModel(),
        });
  }
}
