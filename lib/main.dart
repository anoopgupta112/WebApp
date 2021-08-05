import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("welcome to flutter"),
        ),
        body: WebView(
          initialUrl: "https://pub.dev/packages/webview_flutter/example",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
