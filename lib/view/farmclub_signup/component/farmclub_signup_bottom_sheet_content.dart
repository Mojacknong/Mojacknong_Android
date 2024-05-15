import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/farmclub_signup/component/farmclub_signup_vege_toggle_widget.dart';
import 'package:farmus/view_model/farmclub_signup/farmclub_signup_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubSignupBottomSheetContent extends ConsumerWidget {
  const FarmclubSignupBottomSheetContent(
      {Key? key, required this.title, required this.subTitle, this.onPressed})
      : super(key: key);

  final String title;
  final String subTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref
        .watch(farmclubSignupVegeSelectNotifierProvider)
        .any((vege) => vege.isChecked);

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 330,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 40.0),
                      child: SizedBox(
                        height: 35,
                        width: double.maxFinite,
                        child: Text(
                          title,
                          style: FarmusThemeTextStyle.darkSemiBold21,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        subTitle,
                        style: FarmusThemeTextStyle.gray2Medium13,
                      ),
                    ),
                  ),
                  ...ref
                      .watch(farmclubSignupVegeSelectNotifierProvider)
                      .map((model) => FarmclubSignupVegeToggleWidget(
                            vegeName: model.vegeName,
                          ))
                      .toList(),
                  Container(
                    height: 100,
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: BottomBackgroundDividerButton(
                  button: SizedBox(
                    width: double.infinity,
                    child: PrimaryColorButton(
                      enabled: isChecked,
                      text: "가입하기",
                      onPressed: () {
                        Navigator.pop(context);
                        onPressed?.call();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
