import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/farmus_picture_64.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryComment extends ConsumerWidget {
  const VegeDiaryComment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              const FarmusPictureFix(
                size: 32.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '감자',
                          style: FarmusThemeTextStyle.darkMedium15,
                        ),
                        GestureDetector(
                          child: SvgPicture.asset(
                              'assets/image/ic_more_vertical.svg'),
                        )
                      ],
                    ),
                    const Text(
                      '23.10.29 16:17',
                      style: FarmusThemeTextStyle.gray2Medium13,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '그건 당신이 최선을 다하지 않아서가 아닐까요? ^____^',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        )
      ],
    );
  }
}
