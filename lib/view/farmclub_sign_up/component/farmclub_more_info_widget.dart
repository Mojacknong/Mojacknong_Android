import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/component/search_farmclub_pic.dart';
import 'package:flutter/material.dart';

class FarmclubMoreInfoWidget extends StatelessWidget {
  const FarmclubMoreInfoWidget(
      {super.key, required this.farmClubName, required this.veggieImage});

  final String farmClubName;
  final String veggieImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SearchFarmclubPic(imageUrl: veggieImage),
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
                farmClubName,
                style: FarmusThemeTextStyle.darkSemiBold20,
              )
            ],
          )
        ],
      ),
    );
  }
}
