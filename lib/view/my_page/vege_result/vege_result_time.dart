import 'package:farmus/common/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class VegeResultTime extends StatelessWidget {
  final String postTime;
  const VegeResultTime({
    super.key,
    required this.postTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            postTime,
            style: const TextStyle(
              color: FarmusThemeColor.gray2,
              fontSize: 13,
              fontFamily: "Pretendard",
            ),
          ),
        ],
      ),
    );
  }
}
