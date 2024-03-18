import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';

class HomeVegiAddSecond extends ConsumerWidget {
  const HomeVegiAddSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "등록할 채소를 선택해주세요"),
          ),
        ],
      ),
    );
  }
}
