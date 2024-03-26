import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/add_button.dart';
import 'package:farmus/common/button/delete_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_vegi/component/my_vegi_list_info.dart';
import 'package:farmus/view/vegi_add/home_vegi_add_screen.dart';
import 'package:farmus/view_model/my_vegi/my_vegi_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/home/home_vegi_add_provider.dart';

class MyVegiScreen extends ConsumerWidget {
  const MyVegiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myVegiList = ref.watch(myVegiProvider);
    final myVegiDeleteMode = ref.watch(myVegiDeleteProvider);

    return Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '내 텃밭',
        actions: [
          TextButton(
            onPressed: () {
              ref.read(myVegiDeleteProvider.notifier).changeMyVegiScreenMode();
            },
            child: Text(
              myVegiDeleteMode ? '취소' : '삭제',
              style: FarmusThemeTextStyle.darkMedium16,
            ),
          ),
          const SizedBox(width: 8,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myVegiList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    MyVegiListInfo(
                      myVegi: myVegiList[index],
                    ),
                    if (myVegiList.length - 1 != index)
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Divider(
                          height: 1,
                          color: FarmusThemeColor.gray5,
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              const Divider(
                height: 1,
                color: FarmusThemeColor.gray5,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: myVegiDeleteMode
                    ? DeleteButton(
                        enabled: true, onPressed: () {}, count: "3")
                    : AddButton(
                        onPressed: () {
                          ref.read(homeVegiInfoAddProvider.notifier).reset();
                          ref.read(homeVegiAddMoveProvider.notifier).reset();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeVegiAddScreen(),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
