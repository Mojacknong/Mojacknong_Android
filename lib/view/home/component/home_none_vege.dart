import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_motivation.dart';
import 'home_sub_title.dart';
import 'none/home_my_vege_none.dart';
import 'none/home_none_content.dart';

class HomeNoneVege extends ConsumerWidget {
  const HomeNoneVege({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeMyVegeNone(
          recommendVeggieInfo: [],
        ),
        const HomeMotivation(
          motivation: '텃밭에서 식탁까지 팜어스와 늘 함께해요!',
        ),
        const SizedBox(
          height: 16,
        ),
        HomeSubTitle(title: "루틴", onTap: () {}),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: HomeNoneContent(text: "아직 루틴을 등록하지 않았어요"),
        ),
        HomeSubTitle(title: "성장 일기", onTap: () {}),
        const HomeNoneContent(text: "아직 작성한 일기가 없어요"),
      ],
    );
  }
}
