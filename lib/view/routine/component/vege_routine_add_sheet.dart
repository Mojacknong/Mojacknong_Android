import 'package:farmus/view/routine/component/vege_routine_cycle.dart';
import 'package:farmus/view/routine/component/vege_routine_name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/primary_color_button.dart';
import '../../../common/button/routine_add_button.dart';
import '../../../common/button/white_color_button.dart';
import '../../../common/theme/farmus_theme_color.dart';

class VegeRoutineAddSheet extends ConsumerWidget {
  const VegeRoutineAddSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RoutineAddButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            backgroundColor: FarmusThemeColor.white,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
                          const VegeRoutineNameInput(),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Divider(
                              color: FarmusThemeColor.gray4,
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.0),
                              child: VegeRoutineCycle()),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: WhiteColorButton(
                                    text: '취소',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    enabled: true,
                                  ),
                                ),
                                Expanded(
                                  child: PrimaryColorButton(
                                    text: '확인',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    enabled: true,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
