import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CheckBoxButton extends StatelessWidget {
  final bool isChecked;
  final VoidCallback onPressed;

  const CheckBoxButton({
    Key? key,
    required this.isChecked,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color:
                  isChecked ? FarmusThemeColor.white : FarmusThemeColor.gray3,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          color: isChecked ? FarmusThemeColor.gray6 : FarmusThemeColor.white,
        ),
        child: isChecked
            ? SvgPicture.asset(
                'assets/image/ic_check.svg',
                fit: BoxFit.fill,
              )
            : Container(),
      ),
    );
  }
}
