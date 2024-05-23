import 'package:farmus/view/login/component/login_img_widget.dart';
import 'package:flutter/widgets.dart';

class LoginSecond extends StatelessWidget {
  const LoginSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginImgWidget(
      horizontalPadding: 58,
      text: "주기별 미션을 인증하고",
      imgPath: "assets/image/img_login_second.png",
    );
  }
}
