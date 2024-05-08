import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/search/component/search_farmclub_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFarmclubInfoWidget extends ConsumerWidget {
  const SearchFarmclubInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SearchFarmclubInfo(
            vege: "vege",
            level: "중급",
            period: "3",
            nickname: "대파",
            num: "3",
            total: "8",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            height: 1,
            color: FarmusThemeColor.gray5,
          ),
        ),
      ],
    );
  }
}
