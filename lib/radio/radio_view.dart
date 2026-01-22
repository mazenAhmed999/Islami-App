import 'package:flutter/material.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/radio/widget/radio_card.dart';

import '../core/gen/assets.gen.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.radioBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        // spacing: 5,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20),
            child: Assets.images.imgHeader.image(),
          ),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorPallete.colorAppbar,
                      ),
                      child: TabBar(
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: ColorPallete.primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        dividerColor: Colors.transparent,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        tabs: [
                          Tab(text: "Radio"),
                          Tab(text: "Reciters"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ListView.separated(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (context, index) => RadioCard(),
                            itemCount: 4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ListView.separated(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (context, index) => RadioCard(),
                            itemCount: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
