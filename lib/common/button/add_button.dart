import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/farmus_theme_color.dart';

class AddButton extends ConsumerWidget {
  const AddButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PrimaryButton(
          enabled: true,
          textColor: FarmusThemeColor.white,
          backgroundColor: FarmusThemeColor.primary,
          borderColor: FarmusThemeColor.white,
          onPressed: onPressed,
          buttonChild: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/image/ic_plus.svg',
                ),
                const SizedBox(width: 6),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "추가",
                    style: FarmusThemeTextStyle.whiteSemiBold15,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
