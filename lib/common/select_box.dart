import 'package:flutter/cupertino.dart';

import 'base/bouncing.dart';
import 'theme/farmus_theme_color.dart';

class SelectBox extends StatelessWidget {
  final Function() selectBox;
  final bool enabled;
  final Widget selectBoxContent;

  const SelectBox({
    Key? key,
    required this.selectBox,
    required this.enabled,
    required this.selectBoxContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bouncing(
      onPress: () {},
      child: GestureDetector(
        onTap: selectBox,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: enabled ? FarmusThemeColor.green3 : null,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 1,
                color:
                    enabled ? FarmusThemeColor.white : FarmusThemeColor.gray4,
              ),
            ),
            child: selectBoxContent),
      ),
    );
  }
}
