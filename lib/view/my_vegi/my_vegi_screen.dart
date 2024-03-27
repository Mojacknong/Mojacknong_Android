import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/add_button.dart';
import 'package:farmus/common/button/delete_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_vegi/component/my_vegi_list_info.dart';
import 'package:farmus/view/vegi_add/home_vegi_add_screen.dart';
import 'package:farmus/view_model/my_vegi/my_vegi_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/bottom_sheet/primary_action_sheet.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/home/home_vegi_add_provider.dart';

class MyVegiScreen extends ConsumerStatefulWidget {
  const MyVegiScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyVegiScreenState();
}

class _MyVegiScreenState extends ConsumerState<MyVegiScreen> {
  @override
  Widget build(BuildContext context) {
    final myVegiList = ref.watch(myVegiProvider);
    final myVegiDeleteMode = ref.watch(myVegiDeleteProvider);
    final myVegiNotifier = ref.read(myVegiProvider.notifier);

    void showActionSheet(BuildContext context) {
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => PrimaryActionSheet(
          title: "채소를 삭제하시겠어요?",
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "취소",
                style: FarmusThemeTextStyle.dark2Medium15,
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                myVegiNotifier.removeAllSelected();
                Navigator.pop(context);
              },
              child: const Text(
                "확인",
                style: FarmusThemeTextStyle.dark2Medium15,
              ),
            ),
          ],
        ),
      );
    }

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
          const SizedBox(
            width: 8,
          )
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
                        enabled:
                            myVegiNotifier.selectedVegi.isEmpty ? false : true,
                        onPressed: () {
                          showActionSheet(context);
                        },
                        count: "${myVegiNotifier.selectedVegi.length}")
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
