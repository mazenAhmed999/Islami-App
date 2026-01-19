import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/widget/hadeth_card_widget.dart';

import '../core/gen/assets.gen.dart';
import '../models/hadeth_data.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {


  @override
  void initState() {
    super.initState();
    _loadingHadethText();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadethBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
          children: [
            Assets.images.imgHeader.image(),
            SizedBox(height: size.height * 0.04),
            CarouselSlider(
                items: hadethList
                    .map((e) => HadethCardWidget(hadethData: e))
                    .toList()

                , options: CarouselOptions(
              height: size.height * 0.62,
              aspectRatio: 16 / 9,
              viewportFraction: 0.75,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,))
          ],
        )

    );
  }

  List<HadethData> hadethList = [];

  Future<void> _loadingHadethText() async {
    for (int i = 1; i <= 50; i++) {
      String hadethText = await rootBundle.loadString(
          "assets/files/Hadeth/h$i.txt");
      int titleLength = hadethText.trim().indexOf("\n");
      String hadethTitle = hadethText.substring(0, titleLength);
      String hadethBody = hadethText.substring(titleLength);
      HadethData hadethData = HadethData(
          hadethBody: hadethBody,
          hadethTitle: hadethTitle);

      hadethList.add(hadethData);
    }
    setState(() {});

  }
}
