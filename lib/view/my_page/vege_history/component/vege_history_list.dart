import 'package:farmus/view/my_page/vege_history/component/vege_profile.dart';
import 'package:farmus/view_model/my_page/notifier/vege_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegeInfoProvider = ChangeNotifierProvider<VegeInfoNotifier>((ref) {
  return VegeInfoNotifier();
});

class VegeHistoryList extends ConsumerWidget {
  const VegeHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Column(
        children: [VegeProfile(), VegeProfile()],
      ),
    );
  }
}
