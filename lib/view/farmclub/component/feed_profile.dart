import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FeedProfile extends ConsumerWidget {
  const FeedProfile(
      {super.key,
      this.profileImage,
      required this.isDetail,
      required this.nickname,
      required this.writeDateTime});

  final String? profileImage;
  final bool isDetail;
  final String nickname;
  final String writeDateTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        FarmusPictureFix(
          image: profileImage,
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
                    Text(
                      nickname,
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
                Text(
                  writeDateTime,
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
