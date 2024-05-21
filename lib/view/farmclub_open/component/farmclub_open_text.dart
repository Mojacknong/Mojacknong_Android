import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class FarmclubOpenText extends StatelessWidget {
  const FarmclubOpenText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "함께 키울 채소",
                  style: FarmusThemeTextStyle.darkSemiBold17,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: ShapeDecoration(
                    color: FarmusThemeColor.greenLight,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Row(
                    children: [
                      Text('내 텃밭',
                          style: FarmusThemeTextStyle.green1SemiBold13),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "에 등록된 채소를 선택해 팜클럽을 개설해보세요.",
                  style: FarmusThemeTextStyle.gray2Medium14,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
