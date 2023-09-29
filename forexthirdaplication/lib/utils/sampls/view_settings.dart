import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class UiViewSettings extends StatelessWidget {
  late String url;
  late String name;
  // ignore: use_key_in_widget_constructors
  UiViewSettings({required this.url, required this.name});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(url),
          ),
        ),
    );
  }
}
