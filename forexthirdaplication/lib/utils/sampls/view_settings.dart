import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class UiViewSettings extends StatelessWidget {
  late String url;
  late String name;
  // ignore: use_key_in_widget_constructors
  UiViewSettings({required this.url, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 24, 97),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(url),
        ),
      ),
    );
  }
}
