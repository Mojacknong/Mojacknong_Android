import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDeleteFail extends ConsumerWidget {
  const VegeDeleteFail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        MainSubTitle(
          mainText: "홈파밍에 어려움을 겪고 있나요?\n팜클럽에서 도움을 얻을 수 있어요.",
          subText: '',
        )
      ],
    );
  }
}
