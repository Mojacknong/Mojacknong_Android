import 'package:farmus/common/button/round_gray_button.dart';
import 'package:farmus/common/farmus_picture_fix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../mission_feed/mission_feed_screen.dart';
import '../../mission_write/mission_write_screen.dart';

class FarmclubStep extends ConsumerWidget {
  const FarmclubStep(
      {super.key,
      required this.wholeMember,
      required this.step,
      required this.farmclubInfo,
      required this.isButton});

  final int wholeMember;
  final StepModel step;
  final MyFarmclubInfoModel farmclubInfo;
  final bool isButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => MissionFeedScreen(
                    farmclubInfo: farmclubInfo,
                  ))),
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          color: FarmusThemeColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Step ${step.stepNum}",
                          style: FarmusThemeTextStyle.gray2SemiBold13,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          step.stepName,
                          style: FarmusThemeTextStyle.darkSemiBold17,
                        )
                      ],
                    ),
                  ),
                  RoundGrayButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => MissionWriteScreen(
                            step: step,
                          ),
                        ),
                      );
                    },
                    isButton: isButton,
                    text: '인증하기',
                  )
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
                      Text.rich(
                        TextSpan(
                          style: FarmusThemeTextStyle.gray2SemiBold13,
                          //apply style to all
                          children: [
                            TextSpan(
                              text: '$wholeMember명 중 ',
                            ),
                            TextSpan(
                                text: '${step.completeMemberCount}명',
                                style: FarmusThemeTextStyle.redSemiBold13),
                            const TextSpan(
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
                    children: step.images.isNotEmpty
                        ? step.images.map((image) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: FarmusPictureFix(
                                size: 82,
                                image: image,
                              ),
                            );
                          }).toList()
                        : [const SizedBox()],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
