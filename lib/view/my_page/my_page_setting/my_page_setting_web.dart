import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyPageSettingWeb extends StatefulWidget {
  final String url;

  const MyPageSettingWeb({Key? key, required this.url}) : super(key: key);

  @override
  State<MyPageSettingWeb> createState() => _MyPageSettingWebState();
}

class _MyPageSettingWebState extends State<MyPageSettingWeb> {
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
