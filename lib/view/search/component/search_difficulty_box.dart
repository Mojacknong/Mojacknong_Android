import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/component/search_difficulty_btn.dart';
import 'package:flutter/material.dart';

class SearchDifficultyBox extends StatelessWidget {
  const SearchDifficultyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 63,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: FarmusThemeColor.gray4),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                height: 31,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        '난이도',
                        style: FarmusThemeTextStyle.gray1Medium15,
                      ),
                    ),
                    const SizedBox(width: 13),
                    Container(
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          SearchDifficultyBtn("초급"),
                          SizedBox(width: 10),
                          SearchDifficultyBtn("중급"),
                          SizedBox(width: 10),
                          SearchDifficultyBtn("고급"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
