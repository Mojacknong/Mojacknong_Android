import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/add_button.dart';
import 'package:farmus/common/button/delete_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/my_vege/my_vege_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/bottom_sheet/primary_action_sheet.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/home/home_vege_add_provider.dart';
import '../../view_model/vege_delete/vege_delete_provider.dart';
import '../vege_add/home_vege_add_screen.dart';
import '../vege_delete/vege_delete_screen.dart';
import 'component/my_vege_list_info.dart';

class MyVegeScreen extends ConsumerStatefulWidget {
  const MyVegeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyVegeScreenState();
}

class _MyVegeScreenState extends ConsumerState<MyVegeScreen> {
  @override
  Widget build(BuildContext context) {
    final myVegeList = ref.watch(myVegeProvider);
    final myVegeDeleteMode = ref.watch(myVegeDeleteProvider);
    final myVegeNotifier = ref.read(myVegeProvider.notifier);

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
                Navigator.pop(context);
                ref.read(homeVegeAddMoveProvider.notifier).moveToFirstPage();
                ref.read(vegeDeleteReasonProvider.notifier).reset();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VegeDeleteScreen()),
                );
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
              ref.read(myVegeDeleteProvider.notifier).changeMyVegeScreenMode();
            },
            child: Text(
              myVegeDeleteMode ? '취소' : '삭제',
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
              itemCount: myVegeList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    MyVegeListInfo(
                      myVege: myVegeList[index],
                    ),
                    if (myVegeList.length - 1 != index)
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
          Visibility(
            visible: myVegeDeleteMode,
            child: const Text(
              "채소는 한 번에 하나씩 삭제할 수 있어요",
              style: FarmusThemeTextStyle.redMedium13,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            children: [
              const Divider(
                height: 1,
                color: FarmusThemeColor.gray5,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: myVegeDeleteMode
                    ? DeleteButton(
                        enabled:
                            myVegeNotifier.selectedVege.isEmpty ? false : true,
                        onPressed: () {
                          showActionSheet(context);
                        },
                      )
                    : AddButton(
                        onPressed: () {
                          ref.read(homeVegeInfoAddProvider.notifier).reset();
                          ref.read(homeVegeAddMoveProvider.notifier).reset();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeVegeAddScreen(),
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
