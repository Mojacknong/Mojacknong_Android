import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/form/primary_text_field.dart';
import '../../../common/theme/farmus_theme_color.dart';

class VegeRoutineNameInput extends ConsumerWidget {
  const VegeRoutineNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const IntrinsicHeight(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, top: 48.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            VerticalDivider(
              color: FarmusThemeColor.green1,
              thickness: 2,
              indent: 0,
              endIndent: 10,
            ),
            SizedBox(
                height: 35,
                width: 250,
                child:
                    PrimaryTextField(maxLength: 10, hintText: '루틴을 입력해 주세요')),
          ],
        ),
      ),
    );
  }
}
