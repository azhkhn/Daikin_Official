import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  const WebViewPage(this.url, this.title, {super.key});

  @override
  WebViewPageState createState() =>
      WebViewPageState(url, title);
}

class WebViewPageState extends State<WebViewPage> {
  final String url;
  final String title;

  WebViewPageState(this.url, this.title);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(title),
        ),
        body: Column(children: [
          Expanded(
              child: WebView(
                  initialUrl: url,
                  javascriptMode: JavascriptMode.unrestricted
              )
          )
        ])
    );
  }
}