import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchVegeInfo extends ConsumerWidget {
  const SearchVegeInfo({
    Key? key,
    required this.day,
    required this.total,
    required this.num,
  }) : super(key: key);

  final String day;
  final String total;
  final String num;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: VegeInfoDetail(
            info: {
              '채소': '상추',
              '시작': '+$day일',
              '인원': '$num/$total명',
            },
            bottomWidget: Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                "상추를 치료해줄 사람어디 없나. 저만 매번 실패하나요..이번에는 꼭 성공해서 얼른 상추쌈 싸먹어요! 추를 치료해줄 사람어디 없나. 저만 매번 실패하나요..이번에는 꼭 성공해서 얼른 상추쌈 싸먹어요!",
                style: FarmusThemeTextStyle.gray1Medium13,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
