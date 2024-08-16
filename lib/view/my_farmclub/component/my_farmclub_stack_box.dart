import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/my_farmclub_history/user_farmclub_history_model.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_widget_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../view_model/my_page/my_history_farmclub_provider.dart';
import '../../my_page/component/my_history_box.dart';
import '../my_farmclub_screen.dart';

class MyFarmClubStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? imagePath = "assets/image/ic_farmclub_mark.svg";
  final String? vegeImage;

  const MyFarmClubStackBox({
    Key? key,
    required this.historyType,
    this.image,
    this.vegeImage,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserFarmclubHistoryModel> myFarmclubHistoryAsyncValue =
        ref.watch(userFarmclubHistoryModelProvider);

    return myFarmclubHistoryAsyncValue.when(
      data: (myFarmclubHistory) {
        return Stack(
          children: [
            if (myFarmclubHistory.farmClubHistoryCount == 0 &&
                myFarmclubHistory.farmClubHistoryIcons.isEmpty)
              MyHistoryBox(
                height: 100,
                text: "아직 팜클럽을 완수하지 않았어요",
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (image != null) ...[
                            SvgPicture.asset(
                              imagePath!,
                              height: 22,
                            ),
                            const SizedBox(width: 8),
                          ],
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
            if (myFarmclubHistory.farmClubHistoryCount > 0)
              MyHistoryBox(
                destination: const MyFarmclubScreen(),
                height: 156,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (image != null) ...[
                            SvgPicture.asset(
                              imagePath!,
                              height: 22,
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: historyType,
                                  style: FarmusThemeTextStyle.darkSemiBold17,
                                ),
                                TextSpan(
                                  text:
                                      '${myFarmclubHistory.farmClubHistoryCount}',
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
                              text: '${myFarmclubHistory.farmClubHistoryCount}',
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
            if (myFarmclubHistory.farmClubHistoryIcons.isNotEmpty)
              Positioned(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 24, right: 24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFarmclubHistory.farmClubHistoryIcons.map(
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
