import 'package:flutter/material.dart';
import 'package:islami/QURAN/quran_details_veiw.dart';
import 'package:islami/QURAN/quran_view.dart';
import 'package:islami/core/theme/theme_manager.dart';
// import 'package:islami/hadeth/widget/hadeth_card_widget.dart';
import 'package:islami/layout/layoutview.dart';
import 'package:islami/sebha/sebha_view.dart';

import 'intruductin_model/introduction_screen.dart';
// import 'models/hadeth_data.dart';

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
        QuranView.routName: (context) => QuranView(),
        QuranDetailsVeiw.routName: (context) => QuranDetailsVeiw(),
        SebhaView.rotName: (context) => SebhaView(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == HadethCardWidget.routName) {
      //     final hadethData = settings.arguments as HadethData;
      //
      //     return MaterialPageRoute(
      //       builder: (context) => HadethCardWidget(hadethData: hadethData),
      //     );
      //   }
      //   return null;
      // },
    );
  }
}
