import 'package:flutter/material.dart';
import 'package:islami/QURAN/quran_view.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/hadeth/hadeth_view.dart';
import 'package:islami/radio/radio_view.dart';
import 'package:islami/sebha/sebha_view.dart';
import 'package:islami/time/time_view.dart';

class Layoutview extends StatefulWidget {
  static const String routName = "/Layout";

  const Layoutview({super.key});

  @override
  State<Layoutview> createState() => _LayoutviewState();
}

class _LayoutviewState extends State<Layoutview> {
  int selectedBottomBarIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedBottomBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBottomBarIndex,
        onTap: (index) {
          selectedBottomBarIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPallete.primaryColor,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.icQuran.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.quranInactiveIc.svg(width: 25, height: 25),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icHadeth.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.hadethInactiveIc.svg(width: 25, height: 25),
            ),
            label: "hadeth",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icSebha.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.sebhaInactiveIc.svg(width: 25, height: 25),
            ),
            label: "sebha",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icRadio.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.radioInactiveIc.svg(width: 25, height: 25),
            ),
            label: "radio",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icTime.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.timeInactiveIc.svg(width: 25, height: 25),
            ),
            label: "time",
          ),
        ],
      ),
    );
  }
}
