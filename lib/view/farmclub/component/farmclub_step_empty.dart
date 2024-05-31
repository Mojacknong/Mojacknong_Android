import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubStepEmpty extends ConsumerWidget {
  const FarmclubStepEmpty({super.key, required this.isLast});

  final bool isLast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: FarmusThemeColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/image/ic_farmclub_mark.svg'),
            const SizedBox(
              height: 10.0,
            ),
             Text(
              isLast ? '마지막 미션을 진행 중이에요!' : '아직 완료한 미션이 없어요',
              style: FarmusThemeTextStyle.gray2Medium15,
            ),
          ],
        ),
      ),
    );
  }
}
