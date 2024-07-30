import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FarmclubOpenBottomSheetContent extends ConsumerWidget {
  final String text;

  const FarmclubOpenBottomSheetContent({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoActionSheet(
      message: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          "팜클럽을 개설할 수 없어요",
          style: FarmusThemeTextStyle.darkMedium15,
        ),
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SvgPicture.asset(
                    'assets/image/ic_alert_circle.svg',
                  ),
                ),
                const SizedBox(height: 14.0),
                Text(
                  text,
                  style: FarmusThemeTextStyle.redMedium15,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14.0),
                const Padding(
                  padding: EdgeInsets.only(bottom: 41.0),
                  child: Text(
                    '새 채소를 등록해 팜클럽을 개설해보세요!',
                    style: FarmusThemeTextStyle.gray2Medium14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      cancelButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoActionSheetAction(
            child: const Text(
              "확인",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
