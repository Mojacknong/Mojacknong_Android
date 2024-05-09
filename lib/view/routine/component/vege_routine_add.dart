import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/routine_add_button.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutineAdd extends ConsumerWidget {
  const VegeRoutineAdd({
    super.key,
    required this.vege,
    required this.vegeName,
  });

  final String vege;
  final String vegeName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                vegeName,
                style: FarmusThemeTextStyle.darkSemiBold15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  vege,
                  style: FarmusThemeTextStyle.gray2Medium15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RoutineAddButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
