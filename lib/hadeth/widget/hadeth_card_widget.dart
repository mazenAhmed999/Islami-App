import 'package:flutter/material.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/models/hadeth_data.dart';

import '../../core/gen/assets.gen.dart';

class HadethCardWidget extends StatelessWidget {
  final HadethData hadethData;

  const HadethCardWidget({super.key, required this.hadethData});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(
                      width: size.width * 0.22,
                      color: Colors.black,
                    ),
                    Assets.images.imgRightCorner.image(
                      width: size.width * 0.22,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Expanded(child: Assets.images.hadithCardBackGround1.image()),
              Assets.images.imgBottomDecoration.image(color: Colors.black),
            ],
          ),
          SizedBox(height: 50),
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                Text(
                  hadethData.hadethTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.black),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    hadethData.hadethBody,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
