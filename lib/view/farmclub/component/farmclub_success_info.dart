import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/my_farmclub/farmclub_success_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'farmclub_success_box.dart';

class FarmclubSuccessInfo extends ConsumerWidget {
  final FarmclubSuccessModel myFarmclubSuccessList;
  final int? selectedFarmclubId;

  const FarmclubSuccessInfo(
      {Key? key, required this.myFarmclubSuccessList, this.selectedFarmclubId})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    int date = myFarmclubSuccessList.diaryCount;
    int writtenDiaryCount = myFarmclubSuccessList.diaryCount;
    int missionPostCount = myFarmclubSuccessList.missionPostCount;
    String farmClubName = myFarmclubSuccessList.farmClubName;
    String period = myFarmclubSuccessList.period;
    String veggieImage = myFarmclubSuccessList.veggieImage;

    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: size.width * 0.25,
                  height: size.width * 0.25,
                  decoration: ShapeDecoration(
                    color: FarmusThemeColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: const BorderSide(
                        width: 1,
                        color: FarmusThemeColor.gray4,
                      ),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(veggieImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        farmClubName,
                        style: FarmusThemeTextStyle.darkSemiBold17,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "+$date일 ${period}",
                        style: FarmusThemeTextStyle.gray2Medium15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: FarmusThemeColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FarmclubSuccessBox(
                        type: '성장 일기', count: writtenDiaryCount.toString()),
                    const VerticalDivider(
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    FarmclubSuccessBox(
                        type: '미션 인증', count: missionPostCount.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
