import 'package:farmus/common/bottom_sheet/show_farmus_bottom_sheet.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../farmclub/farmclub_screen.dart';
import '../../main/main_screen.dart';

class FarmclubSignUpButton extends ConsumerWidget {
  const FarmclubSignUpButton(
      {super.key,
      required this.onPressed,
      required this.myVeggieInfoId,
      required this.id});
  final void Function()? onPressed;
  final String myVeggieInfoId;
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 30.0),
      child: SizedBox(
        width: double.infinity,
        child: PrimaryColorButton(
          fontPadding: 15,
          enabled: true,
          fontSize: 16,
          text: "팜클럽 가입하기",
          onPressed: () {
            showFarmclubSignupBottomSheet(
                id, myVeggieInfoId, context, ref, "팜클럽 가입");
                },

        ),
      ),
    );
  }
}
