import 'package:farmus/view/login/component/login_img_widget.dart';
import 'package:flutter/widgets.dart';

class LoginFirst extends StatelessWidget {
  const LoginFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginImgWidget(
      text: "나에게 맞는 팜클럽을 가입해요",
      imgPath: "assets/image/img_login_first.png",
    );
  }
}
