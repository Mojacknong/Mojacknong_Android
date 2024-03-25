import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class HomeMyVegiButton extends ConsumerWidget {
  const HomeMyVegiButton({
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
    return PrimaryButton(
      text: text,
      enabled: enabled,
      textColor: FarmusThemeColor.green1,
      backgroundColor: FarmusThemeColor.greenLight3,
      borderColor: FarmusThemeColor.green1,
      borderRadius: 16.0,
      onPressed: onPressed,
    );
  }
}
