import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubPickVegeButton extends ConsumerWidget {
  const FarmclubPickVegeButton({
    super.key,
    required this.enabled,
    required this.text,
    required this.onPressed,
  });

  final bool enabled;
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: PrimaryButton(
        text: text,
        enabled: enabled,
        textColor: enabled ? FarmusThemeColor.green1 : FarmusThemeColor.gray3,
        backgroundColor: enabled
            ? FarmusThemeColor.greenLight3
            : FarmusThemeColor.background,
        borderColor:
            enabled ? FarmusThemeColor.green1 : FarmusThemeColor.background,
        borderRadius: 25.0,
        onPressed: onPressed,
        fontPadding: 0,
        fontSize: 13,
        height: 31,
      ),
    );
  }
}
