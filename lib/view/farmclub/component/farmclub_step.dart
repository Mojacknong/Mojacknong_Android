import 'package:farmus/common/farmus_picture_fix.dart';
import 'package:farmus/view/mission_feed/mission_feed_screen.dart';
import 'package:farmus/view/mission_write/component/mission_write_route_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubStep extends ConsumerWidget {
  const FarmclubStep({super.key, required this.stepImages});

  final List<String> stepImages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step 3",
                        style: FarmusThemeTextStyle.gray2SemiBold13,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '상추 이파리 사진 찍기',
                        style: FarmusThemeTextStyle.darkSemiBold17,
                      )
                    ],
                  ),
                ),
                MissionWriteRouteButton(isButton: true,)
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text.rich(
                      TextSpan(
                        style: FarmusThemeTextStyle.gray2SemiBold13,
                        //apply style to all
                        children: [
                          TextSpan(
                            text: '8명 중 ',
                          ),
                          TextSpan(
                              text: '3명',
                              style: FarmusThemeTextStyle.redSemiBold13),
                          TextSpan(
                            text: '이 완료했어요',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: ShapeDecoration(
                        color: FarmusThemeColor.greenLight3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: const Text(
                        '상추좋아',
                        style: FarmusThemeTextStyle.green1SemiBold11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    for (var image in stepImages)
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    const MissionFeedScreen())),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FarmusPictureFix(
                            size: 82,
                            image: image,
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
