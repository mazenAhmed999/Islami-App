import 'package:flutter/material.dart';
import 'package:islami/core/theme/color_pallete.dart';

import '../core/gen/assets.gen.dart';

class SebhaView extends StatefulWidget {

  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> azkarList = [
    "سبحان الله",
    "الله أكبر",
    "الحمد لله",
    "لااله الا الله",
    "استغفر الله",
  ];

  int counter = 0;
  int currentIndex = 0;
  int angle = 0;
  final int contMax = 33;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.sebhaBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Assets.images.imgHeader.image(),
          SizedBox(height: 40),
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ", style: Theme
              .of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: 36, color: ColorPallete.colorFont),),
          SizedBox(height: 40,),

          Stack(
              alignment: Alignment.topCenter,
              children: [
                Assets.images.sebhaAlama.image(width: size.width * 0.3),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.07),
                      child: GestureDetector(

                          onTap: () {
                            setState(() {
                              if (counter < contMax) {
                                counter++;
                                angle++;
                              } else {
                                counter = 1;
                                if (currentIndex < azkarList.length - 1) {
                                  currentIndex++;
                                } else {
                                  currentIndex = 0;
                                }
                              }
                            });
                          },
                          child: Transform.rotate(
                              angle: -angle / 3,
                              child: Assets.images.sebhaBody1.image(
                                  width: size.width * 0.8))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.07),
                      child: Column(
                        children: [
                          Text(azkarList[currentIndex], style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 36),),
                          Text("$counter", style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 36),),
                        ],
                      ),
                    )
                  ],
                ),


              ]
          ),
        ],
      ),
    );
  }
}
