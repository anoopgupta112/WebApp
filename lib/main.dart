import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_view_app/home.dart';
import 'package:web_view_app/login.dart';
import 'package:web_view_app/signUP.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp();
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
      home: LoginPage(),
      routes: {
        '/signup': (context) => SignUp(),
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

mainThings() {
  return Scaffold(
    appBar: AppBar(
      title: Text("welcome to website"),
    ),
    body: WebView(
      initialUrl: "https://pub.dev/packages/webview_flutter/example",
      javascriptMode: JavascriptMode.unrestricted,
    ),
  );
}
