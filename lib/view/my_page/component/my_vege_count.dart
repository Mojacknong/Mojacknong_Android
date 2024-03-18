import 'package:farmus/view_model/my_page/notifier/vege_count_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeCount extends ConsumerWidget {
  const MyVegeCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Notifier로부터 채소의 수를 받아오기
    final vegeCount = ref.watch(vegeCountProvider);

    return Column(
      children: [
        Text('채소 $vegeCount'),
        Text('$vegeCount번의 채소 재배에 성공했어요'),
      ],
    );
  }
}
