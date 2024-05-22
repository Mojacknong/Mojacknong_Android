import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MySettingWeb extends StatefulWidget {
  final String url;

  const MySettingWeb({Key? key, required this.url}) : super(key: key);

  @override
  State<MySettingWeb> createState() => _MySettingWebState();
}

class _MySettingWebState extends State<MySettingWeb> {
  late WebViewController _webViewController;

  @override
  void initState() {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse(widget.url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: _webViewController),
    );
  }
}
