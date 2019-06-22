import 'package:flutter/material.dart';
import 'ChatScreen.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // static final ChatScreenState chatScreenState = ChatScreen().createState();
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light,
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.purple,
    accentColor: Colors.orangeAccent[400],
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Friendlychat",
      theme: defaultTargetPlatform == TargetPlatform.iOS
           ? kIOSTheme
           : kDefaultTheme,
      home: ChatScreen(),
    );
  }
}
