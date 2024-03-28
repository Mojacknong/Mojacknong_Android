import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegiDeleteReason extends ConsumerWidget {
  const VegiDeleteReason({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MainSubTitle(
                mainText: "홈파밍을 끝내는 이유가 무엇인가요?",
                subText: '재배에 성공했다면 히스토리에 결과를 기록해주세요')
          ],
        ),
      ),
    );
  }
}
