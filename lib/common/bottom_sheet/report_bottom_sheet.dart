import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_text_style.dart';

class ReportBottomSheet extends ConsumerWidget {
  const ReportBottomSheet({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoActionSheet(
      title: Text(
        title,
        style: FarmusThemeTextStyle.gray2Medium12,
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '상업적 광고 및 판매',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '욕설/비하',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '유출/사칭/사기',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '불건전한 만남 및 대화',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '커뮤니티 성격에 부적절',
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        ),
      ],
    );
  }
}
