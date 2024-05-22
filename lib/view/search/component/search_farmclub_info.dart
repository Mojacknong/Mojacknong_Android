import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/farmclub_sign_up/farmclub_sign_up_screen.dart';
import 'package:farmus/view/search/component/search_farmclub_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFarmclubInfo extends ConsumerWidget {
  const SearchFarmclubInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FarmclubSignUpScreen(
                        day: "1",
                        num: "5",
                        total: "8",
                      )),
            );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: SearchFarmclubInfoWidget(
              vege: "상추",
              level: "중급",
              period: "3",
              nickname: "상추는 현실이 된다",
              num: "3",
              total: "8",
            ),
          ),
        ),
        const Padding(
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
