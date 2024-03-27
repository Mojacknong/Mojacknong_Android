import 'package:farmus/view/my_vegi/my_vegi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import 'my_vegi_step.dart';

class HomeMyVegi extends ConsumerWidget {
  const HomeMyVegi({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyVegiScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: ShapeDecoration(
          color: FarmusThemeColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.35,
                decoration: ShapeDecoration(
                  color: FarmusThemeColor.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: const BorderSide(
                      width: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/image/ic_farm_club_mark.svg"),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "상훈이",
                      style: FarmusThemeTextStyle.darkSemiBold22,
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Step 3",
                          style: FarmusThemeTextStyle.green1SemiBold13,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "+28일 ",
                          style: FarmusThemeTextStyle.gray1Medium13,
                        ),
                        Text(
                          "23.06.27 -",
                          style: FarmusThemeTextStyle.gray1Medium13,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        MyVegiStep(
                          color: FarmusThemeColor.green1,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        MyVegiStep(
                          color: FarmusThemeColor.green1,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        MyVegiStep(
                          color: FarmusThemeColor.green1,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        MyVegiStep(
                          color: FarmusThemeColor.gray3,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        MyVegiStep(
                          color: FarmusThemeColor.gray3,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
