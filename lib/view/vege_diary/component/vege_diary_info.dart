import 'package:farmus/view/vege_diary/component/vege_diary_write_open_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryInfo extends ConsumerWidget {
  const VegeDiaryInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          color: FarmusThemeColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "상훈이",
                    style: FarmusThemeTextStyle.darkSemiBold17,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "+8일",
                    style: FarmusThemeTextStyle.gray2Medium15,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: FarmusThemeColor.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        VegeDiaryWriteOpenInfo(type: '작성한 일기', count: '3개'),
                        VerticalDivider(
                          thickness: 1,
                          color: FarmusThemeColor.gray4,
                        ),
                        VegeDiaryWriteOpenInfo(type: '공개한 일기', count: '2개'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
