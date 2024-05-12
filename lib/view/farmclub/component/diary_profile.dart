import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class DiaryProfile extends ConsumerWidget {
  const DiaryProfile({super.key, required this.isDetail});

  final bool isDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        FarmusPictureFix(
          size: isDetail ? 32.0 : 36.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
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
                    isDetail
                        ? GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                                'assets/image/ic_more_vertical.svg'),
                          )
                        : Container(),
                  ],
                ),
                const Text(
                  '23.10.29 16:17',
                  style: FarmusThemeTextStyle.gray2Medium13,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
