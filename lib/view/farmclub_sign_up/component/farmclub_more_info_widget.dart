import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_widget_pic.dart';
import 'package:flutter/material.dart';

class FarmclubMoreInfoWidget extends StatelessWidget {
  const FarmclubMoreInfoWidget({super.key, required this.farmclubName});

  final String farmclubName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const FarmclubWidgetPic(),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "클럽명",
                style: FarmusThemeTextStyle.gray2Medium15,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                farmclubName,
                style: FarmusThemeTextStyle.darkSemiBold20,
              )
            ],
          )
        ],
      ),
    );
  }
}
