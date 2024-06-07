import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/home/my_veggie_profile.dart';
import '../../vege_info/vege_info_screen.dart';
import 'my_vege_step.dart';

class HomeMyVege extends ConsumerWidget {
  const HomeMyVege({
    super.key,
    required this.size,
    required this.profile,
  });

  final Size size;
  final MyVeggieProfile profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VegeInfoScreen()),
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
                  image: DecorationImage(
                    image: NetworkImage(profile.veggieImage),
                    fit: BoxFit.cover,
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
                    SvgPicture.asset("assets/image/ic_farmclub_mark.svg"),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      profile.veggieName,
                      style: FarmusThemeTextStyle.darkSemiBold22,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Step ${profile.step}",
                          style: FarmusThemeTextStyle.green1SemiBold13,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "+${profile.period}일 ",
                          style: FarmusThemeTextStyle.gray1Medium13,
                        ),
                        Text(
                          profile.createdVeggie,
                          style: FarmusThemeTextStyle.gray1Medium13,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child: MyVegeStep(
                            color: index < profile.step
                                ? FarmusThemeColor.green1
                                : FarmusThemeColor.gray3,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
