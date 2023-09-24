import 'package:flutter/material.dart';
import 'package:livequize7/screen/counterScreen.dart';
import 'package:livequize7/sumapp/uiscreen/appui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  AppUI(),
    );
  }
}

