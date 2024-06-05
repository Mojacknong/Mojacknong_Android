import 'package:farmus/common/button/check_box_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_vege_select_notifier.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpVegeToggleWidget extends ConsumerWidget {
  const FarmclubSignUpVegeToggleWidget({Key? key, required this.vegeName})
      : super(key: key);

  final String vegeName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(farmclubSignUpVegeSelectProvider.select(
        (value) =>
            value.any((vege) => vege.vegeName == vegeName && vege.isChecked)));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: FarmusThemeColor.gray4,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
              child: CheckBoxButton(
                isChecked: isChecked,
                onPressed: () {
                  ref
                      .read(farmclubSignUpVegeSelectProvider.notifier)
                      .toggleVege(vegeName);
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 13.0, horizontal: 6),
              child: Text(
                vegeName,
                style: FarmusThemeTextStyle.darkMedium17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
