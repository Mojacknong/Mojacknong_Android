import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/form/digits_text_form_field.dart';
import '../../../common/primary_switch.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutineCycle extends ConsumerWidget {
  const VegeRoutineCycle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(width: 60, child: DigitsTextFormField()),
              SizedBox(
                width: 10,
              ),
              Text(
                '일 마다 반복하기',
                style: FarmusThemeTextStyle.darkMedium17,
              ),
            ],
          ),
        ),
        PrimarySwitch(),
      ],
    );
  }
}
