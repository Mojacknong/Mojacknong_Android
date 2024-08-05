import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/my_vege/my_vege_provider.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_delete_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/bottom_sheet/show_farmus_bottom_sheet.dart';
import '../../common/button/add_button.dart';
import '../../common/button/primary_color_button.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/my_vege/notifier/my_veggie_info.dart';
import '../vege_add/home_vege_add_screen.dart';
import 'component/my_vege_list_info.dart';

class MyVegeScreen extends ConsumerWidget {
  const MyVegeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myVegeList = ref.watch(myVeggieInfoProvider);
    final myVegeDeleteMode = ref.watch(myVegeDeleteProvider);
    var deleteNotifier = ref.watch(myVeggieDeleteNotifierProvider.notifier);
    var deleteModel = ref.watch(myVeggieDeleteNotifierProvider);

    return Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '내 텃밭',
        actions: [
          TextButton(
            onPressed: () {
              ref.read(myVegeDeleteProvider.notifier).changeMyVegeScreenMode();
              ref.invalidate(myVeggieDeleteNotifierProvider);

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
      body: myVegeList.when(
        data: (myVegeListData) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: myVegeListData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        MyVegeListInfo(
                          myVege: myVegeListData[index],
                        ),
                        if (myVegeListData.length - 1 != index)
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
              BottomBackgroundDividerButton(
                button: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: myVegeDeleteMode
                      ? SizedBox(
                          width: double.infinity,
                          child: PrimaryColorButton(
                            text: '채소 삭제',
                            onPressed: () {
                              showVeggieDeleteBottomSheet(context);
                            },
                            enabled: deleteNotifier
                                .isVegeSelected(deleteModel.value!.myVeggieId),
                          ),
                        )
                      : AddButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeVegeAddScreen(),
                              ),
                            );
                          },
                        ),
                ),
              )
            ],
          );
        },
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: ${error.toString()}'),
      ),
    );
  }
}
