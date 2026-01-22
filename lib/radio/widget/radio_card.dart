import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/color_pallete.dart';

class RadioCard extends StatefulWidget {
  const RadioCard({super.key});

  @override
  State<RadioCard> createState() => _RadioCardState();
}

class _RadioCardState extends State<RadioCard> {
  bool isPlay = false;
  bool isMute = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorPallete.primaryColor,
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: isPlay
              ? Assets.images.radioLine.provider()
              : Assets.images.maskGroup.provider(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Radio Ibrahim Al-Akdar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  isPlay = !isPlay;
                  setState(() {});
                },
                icon: Icon(
                  isPlay ? Icons.pause : Icons.play_arrow,
                  size: size.width * 0.15,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  isMute = !isMute;
                  setState(() {});
                },
                icon: Icon(
                  isMute ? Icons.volume_off : Icons.volume_up,
                  size: size.width * 0.07,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
