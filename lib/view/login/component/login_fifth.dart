import 'package:farmus/view/login/component/login_img_widget.dart';
import 'package:flutter/widgets.dart';

class LoginFifth extends StatelessWidget {
  const LoginFifth({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginImgWidget(
      text: "수확의 기쁨을 함께 나누어요",
      imgPath: "assets/image/img_login_fifth.png",
    );
  }
}
