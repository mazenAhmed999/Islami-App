import 'package:flutter/material.dart';
import 'package:islami/models/sura_data.dart';

import '../../core/gen/assets.gen.dart';

class SuraCard extends StatelessWidget {
  final SuraData suraData;

  const SuraCard({super.key, required this.suraData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.icons.imgSurNumberFrame.provider(),
              ),
            ),
            child: Text(
              suraData.suraNumber,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                suraData.suraNameEn,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
              ),
              Text(
                suraData.suraVersesCount,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.suraNameAr,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
