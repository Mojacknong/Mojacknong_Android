import 'package:farmus/common/dialog/primary_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_text_style.dart';

class CheckDialog extends StatelessWidget {
  final String text;

  const CheckDialog({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return PrimaryDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset("assets/image/ic_check.svg"),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: FarmusThemeTextStyle.darkMedium16,
          )
        ],
      ),
    );
  }
}
