import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class TipExpandCard extends ConsumerWidget {
  const TipExpandCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ExpansionTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            color: FarmusThemeColor.background,
            image: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '준비물',
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '흙대파, 상토, 재사용 흙, 재배 용기',
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ],
        ),
        backgroundColor: FarmusThemeColor.white,
        children: const [
          ListTile(
            leading: SizedBox(
              width: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '고르는 법',
                  style: FarmusThemeTextStyle.gray2Medium13,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '뿌리가 튼튼하게 달려있어요\n너무 가는 것은 순이 여러 번 나오지 못해요\n너무 굵은 것은 맛이 덜해요',
                  style: FarmusThemeTextStyle.darkMedium15,
                ),
              ],
            ),
          ),
          ListTile(
            leading: SizedBox(
              width: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '특징',
                  style: FarmusThemeTextStyle.gray2Medium13,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '심고 일주일만 기다리면 먹을 수 있어요\n장마철에 키우기 어려워요',
                  style: FarmusThemeTextStyle.darkMedium15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
