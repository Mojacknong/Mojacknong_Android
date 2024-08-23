import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/veggie_history/my_veggie_history_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/vege_history/my_veggie_history_notifier.dart';
import '../../my_farmclub/component/farmclub_widget_pic.dart';
import '../../my_page/component/my_divider.dart';
import '../veggie_history_tap_screen.dart';

class VeggieHistoryProfile extends ConsumerWidget {
  final String? detailId;
  final bool showDivider;

  const VeggieHistoryProfile({
    super.key,
    this.detailId,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyVeggieHistoryModel>> veggieListAsyncValue =
    ref.watch(myVeggieHistoryModelProvider);
    return veggieListAsyncValue.when(
      data: (veggieList) {
        final filteredHistory = detailId == null
            ? veggieList
            : veggieList
            .where((veggie) => veggie.detailId == detailId)
            .toList();

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: filteredHistory.length,
          itemBuilder: (context, index) {
            final veggie = filteredHistory[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VeggieHistoryTabScreen(
                    detailId: veggie.detailId,
                  ),
                ));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                            child: FarmclubWidgetPic(
                              imageUrl: veggie.image,
                              size: 60,
                              backgroundColor: Color(int.parse(
                                veggie.backgroundColor,
                              )),
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
                                  veggie.historyName,
                                  style: FarmusThemeTextStyle.darkSemiBold17,
                                ),
                                const VerticalDivider(
                                  width: 16,
                                  thickness: 1,
                                  color: FarmusThemeColor.gray4,
                                ),
                                Text(
                                  veggie.name,
                                  style: FarmusThemeTextStyle.darkMedium15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            veggie.period,
                            style: FarmusThemeTextStyle.gray1Medium13,
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (showDivider) const MyDivider(),
                ],
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
