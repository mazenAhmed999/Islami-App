import 'package:flutter/material.dart';
import 'package:islami/core/theme/theme_manager.dart';
import 'package:islami/layout/layoutview.dart';

import 'intruductin_model/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      theme: ThemeManager.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.routName,
      routes: {
        IntroScreen.routName: (context) => IntroScreen(),
        Layoutview.routName: (context) => Layoutview(),
      },
    );
  }
}
