import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class FarmclubPreparations extends StatelessWidget {
  const FarmclubPreparations({
    Key? key,
    required this.material,
    required this.selectHow,
    required this.features,
  }) : super(key: key);

  final String material;
  final List<String> selectHow;
  final List<String> features;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: FarmusThemeColor.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          _buildText("준비물", material),
          if (selectHow.isNotEmpty) ...[
            const SizedBox(height: 8),
            const Text(
              "고르는 법",
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
            const SizedBox(height: 8),
            for (final selectOne in selectHow) ...[
              _buildText("", selectOne),
              if (selectHow.last != selectOne) const SizedBox(height: 3),
            ],
          ],
          const SizedBox(height: 20),
          if (features.isNotEmpty) ...[
            const SizedBox(height: 8),
            const Text(
              "특징",
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
            const SizedBox(height: 8),
            for (final feature in features) ...[
              _buildText("", feature),
              if (features.last != feature) const SizedBox(height: 3),
            ],
          ],
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildText(String title, String explanation) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            style: FarmusThemeTextStyle.gray2Medium13,
          ),
        if (title.isNotEmpty) const SizedBox(height: 8),
        Text(
          explanation,
          style: FarmusThemeTextStyle.dark2Medium15,
        ),
        if (title.isNotEmpty) const SizedBox(height: 20),
      ],
    );
  }
}
