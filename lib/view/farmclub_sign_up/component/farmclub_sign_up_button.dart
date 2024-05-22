import 'package:farmus/common/button/primary_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpButton extends ConsumerWidget {
  const FarmclubSignUpButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 38.0),
      child: SizedBox(
        width: double.infinity,
        child: PrimaryColorButton(
          enabled: true,
          text: "팜클럽 가입하기",
          onPressed: () {},
        ),
      ),
    );
  }
}
