import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub/component/farmclub_change_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubChangeBottomSheetContent extends ConsumerWidget {
  const FarmclubChangeBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '내 팜클럽',
                            style: FarmusThemeTextStyle.darkMedium15,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          FarmclubChangeInfo(
                            farmclubName: '상추는현실이되다',
                            type: '상추',
                            isCheck: true,
                          ),
                          Divider(
                            height: 1.0,
                            color: FarmusThemeColor.gray5,
                          ),
                          FarmclubChangeInfo(
                            farmclubName: '상추는현실이되다',
                            type: '상추',
                            isCheck: false,
                          ),
                          Divider(
                            height: 1.0,
                            color: FarmusThemeColor.gray5,
                          ),
                          FarmclubChangeInfo(
                            farmclubName: '상추는현실이되다',
                            type: '상추',
                            isCheck: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
