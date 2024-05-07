import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeInfoDetail extends ConsumerWidget {
  const VegeInfoDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(
          top: 32.0, left: 16.0, right: 16.0, bottom: 16.0),
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      '상훈이',
                      style: FarmusThemeTextStyle.gray1SemiBold23,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      VerticalDivider(
                        color: FarmusThemeColor.gray1,
                        thickness: 2,
                        indent: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Row(
                              children: [
                                Text(
                                  '채소',
                                  style: FarmusThemeTextStyle.gray2Medium15,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '상추',
                                  style: FarmusThemeTextStyle.gray1SemiBold15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Row(
                              children: [
                                Text(
                                  '날짜',
                                  style: FarmusThemeTextStyle.gray2Medium15,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '2023.11.23',
                                  style: FarmusThemeTextStyle.gray1SemiBold15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Row(
                              children: [
                                Text(
                                  '파머',
                                  style: FarmusThemeTextStyle.gray2Medium15,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '파머시치',
                                  style: FarmusThemeTextStyle.gray1SemiBold15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8.0),
            child: SvgPicture.asset(
              'assets/image/logo_farmus.svg',
              colorFilter: const ColorFilter.mode(
                  FarmusThemeColor.gray3, BlendMode.srcIn),
            ),
          )
        ],
      ),
    );
  }
}
