import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/bottom_sheet/primary_action_sheet.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/home/home_vege_add_provider.dart';
import '../../../view_model/vege_delete/vege_delete_provider.dart';
import '../../vege_delete/vege_delete_screen.dart';

class VeggieDeleteBottomSheetContent extends ConsumerWidget {
  const VeggieDeleteBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryActionSheet(
      title: "채소를 삭제하시겠어요?",
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "취소",
            style: FarmusThemeTextStyle.dark2Medium15,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            ref.read(homeVegeAddMoveProvider.notifier).moveToFirstPage();
            ref.read(vegeDeleteReasonProvider.notifier).reset();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VegeDeleteScreen()),
            );
          },
          child: const Text(
            "확인",
            style: FarmusThemeTextStyle.dark2Medium15,
          ),
        ),
      ],
    );
  }
}
