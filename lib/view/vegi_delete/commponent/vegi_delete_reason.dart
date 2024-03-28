import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/on_boarding/component/select_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegiDeleteReason extends ConsumerWidget {
  const VegiDeleteReason({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MainSubTitle(
                mainText: "홈파밍을 끝내는 이유가 무엇인가요?",
                subText: '재배에 성공했다면 히스토리에 결과를 기록해주세요'),
            Row(
              children: [
                Expanded(
                  child: SelectBox(
                    selectBox: () {},
                    enabled: true,
                    selectBoxContent: Column(
                      children: [Image.asset("assets/image/img_vegi.png")],
                    ),
                  ),
                ),
                Expanded(
                  child: SelectBox(
                    selectBox: () {},
                    enabled: false,
                    selectBoxContent: Column(
                      children: [Image.asset("assets/image/img_vegi.png")],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
