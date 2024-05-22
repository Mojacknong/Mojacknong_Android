import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeInfoDetail extends ConsumerWidget {
  const VegeInfoDetail({
    super.key,
    required this.info,
    required this.bottomWidget,
    this.showPadding = true,
    this.showBoxDecoration = true,
    this.showVegeContainer = true,
    this.titleWidget,
  });

  final Map<String, String> info;
  final Widget bottomWidget;
  final bool showPadding;
  final bool showBoxDecoration;
  final bool showVegeContainer;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: showPadding
          ? const EdgeInsets.only(
              top: 8.0,
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            )
          : null,
      decoration: showBoxDecoration
          ? ShapeDecoration(
              color: FarmusThemeColor.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            )
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (titleWidget != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: titleWidget!,
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(
                          '상훈이',
                          style: FarmusThemeTextStyle.gray1SemiBold23,
                        ),
                      ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          const VerticalDivider(
                            color: FarmusThemeColor.gray1,
                            thickness: 4,
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: info.entries.map((entry) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 2.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        entry.key,
                                        style:
                                            FarmusThemeTextStyle.gray2Medium15,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        entry.value,
                                        style: FarmusThemeTextStyle
                                            .gray1SemiBold15,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (showVegeContainer)
                Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    color: FarmusThemeColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
            ],
          ),
          bottomWidget,
        ],
      ),
    );
  }
}
