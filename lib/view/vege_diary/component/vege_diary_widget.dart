import 'package:farmus/view/vege_detail/vege_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import 'farmus_picture_64.dart';

class VegeDiaryWidget extends ConsumerWidget {
  const VegeDiaryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const VegeDetailScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              const FarmusPicture64(),
              const SizedBox(
                width: 16.0,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2023년 11월 25일',
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          '상태',
                          style: FarmusThemeTextStyle.gray2Medium15,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '좋음',
                          style: FarmusThemeTextStyle.gray1Medium15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/image/ic_diary_open_true.svg',
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            '일기' * 20,
            style: FarmusThemeTextStyle.darkMedium15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(
              height: 1,
              color: FarmusThemeColor.gray4,
            ),
          ),
        ],
      ),
    );
  }
}
