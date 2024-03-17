import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';

class HomeMotivation extends StatelessWidget {
  final String motivation;

  const HomeMotivation({
    super.key,
    required this.motivation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/image/img_home_motivation.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 80.0,
            ),
            child: Text(motivation, style: FarmusThemeTextStyle.darkMedium15,),
          ),
        ],
      ),
    );
  }
}
