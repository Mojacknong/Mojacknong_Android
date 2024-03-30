import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegiDeleteSuccess extends ConsumerWidget {
  const VegiDeleteSuccess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const MainSubTitle(
          mainText: '축하해요!\n홈파밍 결과를 기록해주세요.',
          subText: '나중에 마이페이지에서 등록 가능해요',
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 240,
          decoration: ShapeDecoration(
            color: FarmusThemeColor.green5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: FarmusThemeColor.white.withOpacity(0.6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/image/ic_camera.svg',
                            colorFilter: const ColorFilter.mode(
                                FarmusThemeColor.dark, BlendMode.srcIn)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
