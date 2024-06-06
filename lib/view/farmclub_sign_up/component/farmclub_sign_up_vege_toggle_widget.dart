import 'package:farmus/common/button/check_box_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/farmclub_sign_up/toggle_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpVegeToggleWidget extends ConsumerWidget {
  const FarmclubSignUpVegeToggleWidget({
    Key? key,
    required this.vegeName,
    required this.isChecked,
  }) : super(key: key);

  final String vegeName;
  final bool isChecked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleNotifier = ref.watch(toggleNotifierProvider);

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
                isChecked: toggleNotifier.isChecked,
                onPressed: toggleNotifier.toggleChecked,
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
