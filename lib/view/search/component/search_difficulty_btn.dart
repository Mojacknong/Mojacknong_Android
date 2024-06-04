import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view_model/search/search_provider.dart';
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
  @override
  Widget build(BuildContext context) {
    Color levelColor1 = FarmusThemeColor.gray5;
    Color levelColor2 = FarmusThemeColor.gray5;
    Widget image = Container();
    final searchDifficultyState = ref.watch(searchDifficultyBtnProvider);
    final isPressed = searchDifficultyState[widget.level]!;
    String difficultyKorean = '';

    switch (widget.level) {
      case "EASY":
        levelColor1 =
            isPressed ? FarmusThemeColor.blue1 : FarmusThemeColor.gray5;
        levelColor2 =
            isPressed ? FarmusThemeColor.blue2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_blue.svg');
        difficultyKorean = "초급";
        break;
      case "NORMAL":
        levelColor1 =
            isPressed ? FarmusThemeColor.orange1 : FarmusThemeColor.gray5;
        levelColor2 =
            isPressed ? FarmusThemeColor.orange2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_orange.svg');
        difficultyKorean = "중급";
        break;
      case "HARD":
        levelColor1 =
            isPressed ? FarmusThemeColor.red1 : FarmusThemeColor.gray5;
        levelColor2 =
            isPressed ? FarmusThemeColor.red2 : FarmusThemeColor.gray5;
        image = SvgPicture.asset('assets/image/ic_xmark_red.svg');
        difficultyKorean = "고급";
        break;
    }

    return GestureDetector(
      onTap: () {
        ref
            .read(searchDifficultyBtnProvider.notifier)
            .toggleLevel(widget.level);
        final filteredDifficulties = ref
            .read(searchDifficultyBtnProvider.notifier)
            .getFilteredDifficulties();
      },
      child: Container(
        decoration: BoxDecoration(
          color: isPressed ? levelColor1 : FarmusThemeColor.gray5,
          border: Border.all(
            color: isPressed ? levelColor2 : FarmusThemeColor.gray5,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 13.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              difficultyKorean,
              style: TextStyle(
                color: isPressed ? levelColor2 : FarmusThemeColor.gray3,
              ),
            ),
            if (isPressed)
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
