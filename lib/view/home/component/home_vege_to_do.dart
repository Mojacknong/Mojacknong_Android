import 'package:farmus/view/farmclub/component/farmclub_step.dart';
import 'package:farmus/view/home/component/vege_routine.dart';
import 'package:farmus/view/routine/routine_screen.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class HomeVegeTodo extends ConsumerWidget {
  const HomeVegeTodo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String toDo = ref.watch(homeToDoProvider);

    return toDo == "routine"
        ? Column(
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Text(
                    "1개",
                    style: FarmusThemeTextStyle.redSemiBold13,
                  ),
                  Text(
                    "의 루틴이 남았어요",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              VegeRoutine(
                routine: '물 갈아 주기',
                day: '4',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutineScreen()),
                  );
                },
                isChecked: false,
              ),
              const Divider(
                height: 1,
                color: FarmusThemeColor.gray5,
              ),
              VegeRoutine(
                routine: '물 주기',
                day: '3',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutineScreen()),
                  );
                },
                isChecked: true,
              ),
            ],
          )
        : const Column(
            children: [
              SizedBox(
                height: 16,
              ),
              FarmclubStep(
                stepImages: [],
              )
            ],
          );
  }
}
