import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class FarmclubPreparations extends StatelessWidget {
  const FarmclubPreparations({
    Key? key,
    required this.supplies,
    required this.howToChoose,
    required this.characteristics,
  }) : super(key: key);

  final String supplies;
  final String howToChoose;
  final String characteristics;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: FarmusThemeColor.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          _buildText("준비물", supplies),
          _buildText("고르는 법", howToChoose),
          _buildText("특징", characteristics),
        ],
      ),
    );
  }

  Widget _buildText(String title, String explanation) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FarmusThemeTextStyle.gray2Medium13,
        ),
        const SizedBox(height: 8),
        Text(
          explanation,
          style: FarmusThemeTextStyle.dark2Medium15,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
