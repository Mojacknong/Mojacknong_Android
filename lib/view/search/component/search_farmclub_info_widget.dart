import 'package:farmus/view/search/component/search_farmclub_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/theme/farmus_theme_color.dart';
import '../../../../../common/theme/farmus_theme_text_style.dart';

class SearchFarmclubInfoWidget extends ConsumerWidget {
  const SearchFarmclubInfoWidget({
    Key? key,
    required this.name,
    required this.veggieName,
    required this.veggieImage,
    required this.difficulty,
    required this.startedAt,
    required this.maxUser,
    required this.curUser,
  }) : super(key: key);

  final String name;
  final String veggieName;
  final String veggieImage;
  final String difficulty;
  final String startedAt;
  final int maxUser;
  final int curUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color? levelColor;
    String difficultyKorean = "";

    switch (difficulty) {
      case "EASY":
        levelColor = FarmusThemeColor.blue;
        difficultyKorean = "초급";
        break;
      case "MEDIUM":
        levelColor = FarmusThemeColor.yellow;
        difficultyKorean = "중급";

        break;
      case "HARD":
        levelColor = FarmusThemeColor.red;
        difficultyKorean = "고급";

        break;
    }

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SearchFarmclubPic(imageUrl: veggieImage),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 16,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    Text(
                      veggieName,
                      style: FarmusThemeTextStyle.gray1Medium15,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    startedAt,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '$curUser/$maxUser명',
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: ShapeDecoration(
                      color: levelColor,
                      shape: const OvalBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    difficultyKorean,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
