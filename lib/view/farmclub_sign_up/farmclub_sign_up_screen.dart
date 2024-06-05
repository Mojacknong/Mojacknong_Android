import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_%20preparations.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_more_info_widget.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_only_container.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_button.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpScreen extends ConsumerWidget {
  const FarmclubSignUpScreen(
      {Key? key, this.day, this.total, this.num, required this.id})
      : super(key: key);

  final String? day;
  final String? total;
  final String? num;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmclubDetailAsyncValue =
        ref.watch(searchFarmclubDetailModelProvider(id));
    return farmclubDetailAsyncValue.when(
      data: (farmclubDetailModel) {
        return Scaffold(
          appBar: const BackLeftTitleAppBar(
            title: "더보기",
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: VegeInfoDetail(
                          showPadding: false,
                          showBoxDecoration: false,
                          showVegeContainer: false,
                          titleWidget: FarmclubMoreInfoWidget(
                            farmClubName: farmclubDetailModel.farmClubName,
                            veggieImage: farmclubDetailModel.veggieImage,
                          ),
                          info: {
                            '채소': farmclubDetailModel.veggieName,
                            '시작': farmclubDetailModel.startedAt,
                            '인원':
                                '${farmclubDetailModel.currentMemberCount}/${farmclubDetailModel.maxMemberCount}명',
                          },
                          bottomWidget: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                farmclubDetailModel.farmClubDescription,
                                style: FarmusThemeTextStyle.gray1Medium13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 6.0,
                        color: FarmusThemeColor.gray7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "준비 사항",
                                style: FarmusThemeTextStyle.darkSemiBold17,
                              ),
                            ),
                            const SizedBox(height: 12),
                            FarmclubPreparations(
                              material: farmclubDetailModel.help.material,
                              selectHow: farmclubDetailModel.help.selectHow,
                              features: farmclubDetailModel.help.features,
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: FarmclubOnlyContainer(),
                      )
                    ],
                  ),
                ),
              ),
              BottomBackgroundDividerButton(
                button: FarmclubSignUpButton(
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) =>
          Center(child: Text('Failed to load data: $error')),
    );
  }
}
