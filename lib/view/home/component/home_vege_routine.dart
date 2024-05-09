import 'package:farmus/view/home/component/vege_routine.dart';
import 'package:farmus/view/routine/routine_screen.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class HomeVegeRoutine extends ConsumerWidget {
  const HomeVegeRoutine({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String toDo = ref.watch(homeToDoProvider);

    return toDo == "routine"
        ? Column(
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Text(
                    "1개",
                    style: FarmusThemeTextStyle.redSemiBold13,
                  ),
                  Text(
                    "의 루틴이 남았어요",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              VegeRoutine(
                  routine: '물 갈아 주기',
                  day: '4일 1회',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RoutineScreen()),
                    );
                  }),
              const Divider(
                height: 1,
                color: FarmusThemeColor.gray5,
              ),
              VegeRoutine(
                routine: '물 주기',
                day: '3일 1회',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutineScreen()),
                  );
                },
              ),
            ],
          )
        : Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Expanded(
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
                          Container(
                            width: 89,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 14),
                            decoration: ShapeDecoration(
                              color: FarmusThemeColor.gray6,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                '인증하기',
                                style: FarmusThemeTextStyle.whiteSemiBold15,
                              ),
                            ),
                          ),
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
                                        style:
                                            FarmusThemeTextStyle.redSemiBold13),
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
                              Container(
                                width: 82,
                                height: 82,
                                decoration: ShapeDecoration(
                                  color: FarmusThemeColor.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/image/ic_farm_club_mark.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 82,
                                height: 82,
                                decoration: ShapeDecoration(
                                  color: FarmusThemeColor.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/image/ic_farm_club_mark.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 82,
                                height: 82,
                                decoration: ShapeDecoration(
                                  color: FarmusThemeColor.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/image/ic_farm_club_mark.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
