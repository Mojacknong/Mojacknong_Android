import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/component/my_history_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/veggie_history/user_veggie_history_model.dart';
import '../../../view_model/vege_history/my_history_veggie_provider.dart';
import '../../my_farmclub/component/farmclub_widget_pic.dart';
import '../../veggie_history/veggie_history_list_screen.dart';

class MyVegeStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? vegeImage;

  const MyVegeStackBox({
    Key? key,
    required this.historyType,
    this.image,
    this.vegeImage,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserVeggieHistoryModel> myVeggieHistoryAsyncValue =
        ref.watch(userVeggieHistoryModelProvider);
    return myVeggieHistoryAsyncValue.when(
      data: (myVeggieHistory) {
        return Stack(
          children: [
            if (myVeggieHistory.veggieHistoryCount == 0 &&
                myVeggieHistory.veggieHistoryIcons.isEmpty)
              MyHistoryBox(
                height: 100,
                text: "아직 재배를 완료하지 않았어요",
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: historyType,
                                  style: FarmusThemeTextStyle.darkSemiBold17,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            if (myVeggieHistory.veggieHistoryCount > 0)
              MyHistoryBox(
                destination: const VeggieHistoryListScreen(),
                height: 156,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: historyType,
                                  style: FarmusThemeTextStyle.darkSemiBold17,
                                ),
                                TextSpan(
                                  text: '${myVeggieHistory.veggieHistoryCount}',
                                  style: FarmusThemeTextStyle.gray2SemiBold17,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${myVeggieHistory.veggieHistoryCount}',
                              style: FarmusThemeTextStyle.green1SemiBold13,
                            ),
                            TextSpan(
                              text: message,
                              style: FarmusThemeTextStyle.gray1SemiBold13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (myVeggieHistory.veggieHistoryIcons.isNotEmpty)
              Positioned(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 24, right: 24),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myVeggieHistory.veggieHistoryIcons.map(
                            (icon) {
                              return FarmclubWidgetPic(
                                size: 60,
                                imageUrl: icon.url,
                                backgroundColor: Color(int.parse(icon
                                    .backgroundColor
                                    .replaceFirst('#', '0xff'))),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('$error')),
    );
  }
}
