import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/theme/color_pallete.dart';

import '../core/gen/assets.gen.dart';
import '../layout/layoutview.dart';

class IntroScreen extends StatelessWidget {
  static const String routName = "/IntroductionScreen";

  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        titleWidget: Text(
          "Welcome To Islmi App",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        body: "",
        image: Center(
          child: Image(image: Assets.images.frame3.provider(), width: 200),
        ),
      ),
      PageViewModel(
        titleWidget: Text(
          "Welcome To Islami",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        bodyWidget: Text(
          "We Are Very Excited To Have You In Our Community",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        image: Center(
          child: Image(image: Assets.images.frame31.provider(), width: 200),
        ),
      ),
      PageViewModel(
        titleWidget: Text(
          "Reading the Quran",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        bodyWidget: Text(
          "Read, and your Lord is the Most Generous",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        image: Center(
          child: Image(image: Assets.images.frame32.provider(), width: 200),
        ),
      ),
      PageViewModel(
        titleWidget: Text(
          "Bearish",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        bodyWidget: Text(
          "Praise the name of your Lord, the Most High",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        image: Center(
          child: Image(image: Assets.images.frame33.provider(), width: 200),
        ),
      ),
      PageViewModel(
        titleWidget: Text(
          "Holy Quran Radio",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        bodyWidget: Text(
          "You can listen to the Holy Quran Radio through the application for free and easily",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
        image: Center(
          child: Image(image: Assets.images.frame34.provider(), width: 200),
        ),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      showNextButton: true,
      showBackButton: true,
      back: Text(
        "Back",
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: ColorPallete.primaryColor),
      ),
      bodyPadding: EdgeInsets.only(top: 266),
      globalHeader: Assets.images.headerIntro.image(),
      globalBackgroundColor: Color(0xff202020),
      dotsFlex: 2,
      showSkipButton: true,
      skip: Text(
        "Skip",
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: ColorPallete.primaryColor),
      ),
      onSkip: () {
        Navigator.pushReplacementNamed(context, Layoutview.routName);
      },

      next: Text(
        "Next",
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: ColorPallete.primaryColor),
      ),
      done: Text(
        "Finish",
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: ColorPallete.primaryColor),
      ),
      onDone: () {
        Navigator.pushReplacementNamed(context, Layoutview.routName);
      },
    );
  }
}
