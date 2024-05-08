import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SearchDifficultyBtn extends ConsumerStatefulWidget {
  final String level;

  const SearchDifficultyBtn(this.level, {super.key});

  @override
  _SearchDifficultyBtnState createState() => _SearchDifficultyBtnState();
}

class _SearchDifficultyBtnState extends ConsumerState<SearchDifficultyBtn> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color levelColor1 = FarmusThemeColor.gray5;
    Color levelColor2 = FarmusThemeColor.gray5;
    Widget image = Container();

    switch (widget.level) {
      case "초급":
        levelColor1 =
            _isPressed ? FarmusThemeColor.blue1 : FarmusThemeColor.gray5;
        levelColor2 =
            _isPressed ? FarmusThemeColor.blue2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_blue.svg');
        break;
      case "중급":
        levelColor1 =
            _isPressed ? FarmusThemeColor.orange1 : FarmusThemeColor.gray5;
        levelColor2 =
            _isPressed ? FarmusThemeColor.orange2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_orange.svg');
        break;
      case "고급":
        levelColor1 =
            _isPressed ? FarmusThemeColor.red1 : FarmusThemeColor.gray5;
        levelColor2 =
            _isPressed ? FarmusThemeColor.red2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_red.svg');
        break;
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Container(
        height: 31,
        decoration: BoxDecoration(
          color: _isPressed ? levelColor1 : FarmusThemeColor.gray5,
          border: Border.all(
            color: _isPressed ? levelColor2 : FarmusThemeColor.gray5,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 13.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              widget.level,
              style: TextStyle(
                color: _isPressed ? levelColor2 : FarmusThemeColor.gray3,
              ),
            ),
            if (_isPressed)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: image,
              ),
          ],
        ),
      ),
    );
  }
}
