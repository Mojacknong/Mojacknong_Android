// lib/view/home/component/none/home_my_vege_none.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/theme/farmus_theme_color.dart';
import '../../../../common/theme/farmus_theme_text_style.dart';
import '../../../../view_model/home/home_vege_add_provider.dart';
import '../../../vege_add/home_vege_add_screen.dart';
import 'home_vege_info.dart';

class HomeMyVegeNone extends ConsumerWidget {
  const HomeMyVegeNone({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: FarmusThemeColor.gray4),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            decoration: const ShapeDecoration(
              color: FarmusThemeColor.green4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(homeVegeInfoAddProvider.notifier).reset();
                    ref.read(homeVegeAddMoveProvider.notifier).reset();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeVegeAddScreen()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '채소 등록하기',
                        style: FarmusThemeTextStyle.darkSemiBold20,
                      ),
                      const SizedBox(width: 1),
                      SvgPicture.asset("assets/image/ic_right.svg"),
                    ],
                  ),
                ),
                const Text('새로운 채소를 등록해 홈파밍을 시작해볼까요?',
                    style: FarmusThemeTextStyle.darkMedium13),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "추천 채소",
              style: FarmusThemeTextStyle.gray1Medium15,
            ),
          ),
          const HomeVegeInfo(
            vege: "상추",
            level: "초급",
            period: "1달",
            selected: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              height: 1,
              indent: 20,
              endIndent: 20,
              color: FarmusThemeColor.gray4,
            ),
          ),
          const HomeVegeInfo(
            vege: "대파",
            level: "초급",
            period: "1달",
            selected: false,
          ),
        ],
      ),
    );
  }
}
