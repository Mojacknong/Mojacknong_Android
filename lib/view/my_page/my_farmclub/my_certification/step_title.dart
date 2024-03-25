import 'package:farmus/common/farmus_theme_color.dart';
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
                TextSpan(
                  text: '스텝 ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text: '$step', // 외부에서 받아온 step 변수 사용
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text: '| ',
                  style: TextStyle(fontSize: 17, color: FarmusThemeColor.gray4),
                ),
                TextSpan(
                  text: title, // 기존의 title 변수 사용
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
