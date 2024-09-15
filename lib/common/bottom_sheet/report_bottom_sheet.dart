import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/diary/diary_comment_report_notifier.dart';
import '../../view_model/diary/diary_post_report_notifier.dart';
import '../../view_model/mission_feed/mission_comment_report_notifier.dart';
import '../../view_model/mission_feed/mission_post_report_notifier.dart';
import '../dialog/check_dialog.dart';
import '../theme/farmus_theme_text_style.dart';

class ReportBottomSheet extends ConsumerWidget {
  const ReportBottomSheet({
    super.key,
    required this.title,
    required this.dialogText,
    this.reportId,
    this.reportType,
  });

  final String title;
  final String dialogText;
  final int? reportId;
  final String? reportType;

  void _report(BuildContext context, WidgetRef ref, String reason) {
    Navigator.pop(context);

    final reportActions = {
      'missionPost': () async {
        await ref
            .read(missionPostReportNotifierProvider(reportId!, reason).future);
        _navigateBackAndShowDialog(context);
      },
      'missionComment': () => ref
          .read(missionCommentReportNotifierProvider(reportId!, reason).future)
          .then((value) => _showConfirmationDialog(context)),
      'diaryPost': () async {
        await ref
            .read(diaryPostReportNotifierProvider(reportId!, reason).future);
        _navigateBackAndShowDialog(context);
      },
      'diaryComment': () => ref
          .read(diaryCommentReportNotifierProvider(reportId!, reason).future)
          .then((value) => _showConfirmationDialog(context)),
    };

    reportActions[reportType]?.call();
  }

  void _navigateBackAndShowDialog(BuildContext context) {
    Navigator.pop(context);

    _showConfirmationDialog(context);
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pop(context);
        });
        return CheckDialog(
          text: dialogText,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportOptions = [
      '상업적 광고 및 판매',
      '욕설/비하',
      '유출/사칭/사기',
      '불건전한 만남 및 대화',
      '커뮤니티 성격에 부적절',
    ];

    return CupertinoActionSheet(
      title: Text(
        title,
        style: FarmusThemeTextStyle.gray2Medium12,
      ),
      actions: reportOptions.map((option) {
        return CupertinoActionSheetAction(
          onPressed: () => _report(context, ref, option),
          child: Text(
            option,
            style: FarmusThemeTextStyle.darkMedium14,
          ),
        );
      }).toList(),
    );
  }
}
