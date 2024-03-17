import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_theme_color.dart';
import '../../../common/farmus_theme_text_style.dart';
import '../../../view_model/home/home_provider.dart';
import 'home_to_do_button.dart';

class HomeToDo extends ConsumerWidget {
  const HomeToDo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toDo = ref.read(homeToDoProvider.notifier);
    var isButtonSelect = ref.watch(homeToDoProvider);
    var isRoutine = isButtonSelect == "routine";
    var isFarmclubMission = isButtonSelect == "farmclubMission";

    return Container(
      width: double.infinity,
      height: 44,
      decoration: ShapeDecoration(
        color: FarmusThemeColor.gray5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeToDoButton(
                text: "루틴",
                onPressed: () {
                  toDo.selectRoutine();
                },
                enabled: isRoutine,
                textStyle: isRoutine
                    ? FarmusThemeTextStyle.dark2SemiBold15
                    : FarmusThemeTextStyle.gray3SemiBold15,
                backgroundColor:
                    isRoutine ? FarmusThemeColor.white : FarmusThemeColor.gray5,
              ),
              HomeToDoButton(
                text: "팜클럽 미션",
                onPressed: () {
                  toDo.selectFarmclubMission();
                },
                enabled: isFarmclubMission,
                textStyle: isFarmclubMission
                    ? FarmusThemeTextStyle.dark2SemiBold15
                    : FarmusThemeTextStyle.gray3SemiBold15,
                backgroundColor: isFarmclubMission
                    ? FarmusThemeColor.white
                    : FarmusThemeColor.gray5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
