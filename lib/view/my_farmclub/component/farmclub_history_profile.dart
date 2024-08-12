import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/my_farmclub_history/my_farmclub_history_model.dart';
import '../../../view_model/my_farmclub_history/my_farmclub_history_notifier.dart';
import '../../my_page/component/my_divider.dart';
import 'farmclub_widget_pic.dart';

class FarmclubHistoryProfile extends ConsumerWidget {
  const FarmclubHistoryProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyFarmclubHistoryModel>> myFarmclubHistory =
    ref.watch(myFarmclubHistoryModelProvider);

    return myFarmclubHistory.when(
      data: (farmclubHistory) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: farmclubHistory.length,
          itemBuilder: (context, index) {
            final farmclub = farmclubHistory[index];
            return Column(
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,16,8,16),
                          child: FarmclubWidgetPic(
                            imageUrl: farmclub.image,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                farmclub.historyName,
                                style: FarmusThemeTextStyle.darkSemiBold17,
                              ),
                              const VerticalDivider(
                                width: 16,
                                thickness: 1,
                                color: FarmusThemeColor.gray4,
                              ),
                              Text(
                                farmclub.name,
                                style: FarmusThemeTextStyle.darkMedium15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '활동기간 ${farmclub.period}',
                          style: FarmusThemeTextStyle.gray1Medium13,
                        ),
                      ],
                    ),
                  ],
                ),
                const MyDivider(),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        print("Error loading farmclub history: $error");
        print("Stack trace: $stack");
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
