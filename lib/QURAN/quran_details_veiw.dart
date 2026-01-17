import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/color_pallete.dart';

import '../models/sura_data.dart';

class QuranDetailsVeiw extends StatefulWidget {
  static const String routName = "/Quran_veiw_details";

  const QuranDetailsVeiw({super.key});

  @override
  State<QuranDetailsVeiw> createState() => _QuranDetailsVeiwState();
}

class _QuranDetailsVeiwState extends State<QuranDetailsVeiw> {
  @override
  Widget build(BuildContext context) {
    SuraData suraData = ModalRoute.of(context)!.settings.arguments as SuraData;
    _loadQuranTex(suraData.suraNumber.toString());
    return Scaffold(
      backgroundColor: ColorPallete.colorPage,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorPallete.primaryColor),
        backgroundColor: ColorPallete.colorPage,
        title: Text(
          suraData.suraNameEn,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: ColorPallete.primaryColor),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Assets.images.imgBottomDecoration.image(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.images.imgLeftCorner.image(width: 92),
                      Text(
                        suraData.suraNameAr,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: ColorPallete.primaryColor,
                        ),
                      ),
                      Assets.images.imgRightCorner.image(width: 92),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Text(
                          " [${index + 1}],${verses[index]}",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(color: ColorPallete.primaryColor),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: verses.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  Future<void> _loadQuranTex(String suraNumber) async {
    String quranText = await rootBundle.loadString(
      "assets/files/$suraNumber.txt",
    );
    verses = quranText
        .split("\n")
        .where((line) => line.trim().isNotEmpty)
        .toList();
    setState(() {});
  }
}
