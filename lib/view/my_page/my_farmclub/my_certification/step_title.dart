import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class StepTitle extends StatelessWidget {
  final String step;
  final String title;

  const StepTitle({
    Key? key,
    required this.title,
    required this.step,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 6.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                const TextSpan(
                  text: 'Step',
                  style: FarmusThemeTextStyle.gray2SemiBold17,
                ),
                TextSpan(
                  text: step,
                  style: FarmusThemeTextStyle.gray2SemiBold17,
                ),
                const TextSpan(
                  text: '  ',
                ),
                TextSpan(
                  text: title,
                  style: FarmusThemeTextStyle.darkSemiBold17,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
