import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_bottom_sheet_subtitle.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_vege_toggle_widget.dart';
import 'package:farmus/view/vege_add/home_vege_add_screen.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_final_provider.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_provider.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_veggie_provider.dart';
import 'package:farmus/view_model/farmclub_sign_up/toggle_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class FarmclubSignUpBottomSheetContent extends ConsumerWidget {
  const FarmclubSignUpBottomSheetContent(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.onPressed,
      required this.infoId,
      required this.id})
      : super(key: key);

  final String title;
  final String subTitle;
  final void Function()? onPressed;
  final String infoId;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleNotifier = ref.watch(toggleNotifierProvider);

    final farmclubDetailAsyncValue =
        ref.watch(searchFarmclubDetailModelProvider(id));
    final myVeggieAsyncValue = ref.watch(farmclubSignupModelProvider(infoId));
    return myVeggieAsyncValue.when(
      data: (myVeggieModel) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
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
                          horizontal: 28.0,
                          vertical: 8.0,
                        ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: myVeggieModel.nickname != ""
                                ? const FarmclubBottomSheetSubtitle(
                                    text: "내 텃밭에 등록된 채소로 팜클럽에 가입할 수 있어요")
                                : const FarmclubBottomSheetSubtitle(
                                    text:
                                        "내 텃밭에 등록된 채소로만 가입할 수 있어요\n새 채소를 등록해보세요!")),
                      ),
                      myVeggieModel.nickname != ""
                          ? FarmclubSignUpVegeToggleWidget(
                              vegeName: myVeggieModel.nickname,
                            )
                          : Container()
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
                        child: myVeggieModel.nickname != ""
                            ? farmclubDetailAsyncValue.when(
                                data: (data) {
                                  return PrimaryColorButton(
                                    enabled: toggleNotifier.isChecked,
                                    text: "가입하기",
                                    onPressed: () {
                                      ref.watch(signUpVeggieProvider(
                                          data.farmClubId,
                                          myVeggieModel.myVeggieId));
                                      print(
                                          'farmClubId: ${data.farmClubId}, myVeggieId: ${myVeggieModel.myVeggieId}');

                                      Navigator.pop(context);
                                      onPressed?.call();
                                    },
                                  );
                                },
                                loading: () => const Center(
                                    child: CircularProgressIndicator()),
                                error: (error, stack) {
                                  return Center(child: Text('Error: $error'));
                                },
                              )
                            : PrimaryButton(
                                textColor: FarmusThemeColor.gray1,
                                backgroundColor: FarmusThemeColor.gray4,
                                borderColor: FarmusThemeColor.gray5,
                                enabled: true,
                                buttonChild: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/image/ic_plus.svg',
                                        colorFilter: const ColorFilter.mode(
                                          FarmusThemeColor.gray1,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        "새 채소",
                                        style:
                                            FarmusThemeTextStyle.gray1Medium15,
                                      ),
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeVegeAddScreen(),
                                    ),
                                  );
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
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
