import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vege_diary_detail/component/vege_diary_detail_content.dart';
import '../../vege_diary_detail/component/vege_diary_detail_icon.dart';
import 'diary_profile.dart';

class FarmclubOpenDiary extends ConsumerWidget {
  const FarmclubOpenDiary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: DiaryProfile(
            isDetail: false,
          ),
        ),
        VegeDiaryDetailContent(),
        VegeDiaryDetailIcon(),
      ],
    );
  }
}
