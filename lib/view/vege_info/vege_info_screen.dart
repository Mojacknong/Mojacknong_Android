import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/farmus_calender.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_vege/my_vege_screen.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/button/bottom_backgroud_divider_button.dart';
import '../../model/home/my_veggie_list_model.dart';
import '../../model/home/my_veggie_profile.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/notifier/my_veggie_add_notifier.dart';
import '../../view_model/my_vege/notifier/my_vege_delete_notifier.dart';
import '../../view_model/my_vege/notifier/my_veggie_list.dart';
import '../../view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import '../../view_model/on_boarding/on_boarding_finish_notifier.dart';
import '../vege_add/component/home_vege_name_input.dart';

DateTime parseDate(String dateString) {
  final parts = dateString.split('.');
  if (parts.length == 3) {
    final year = int.parse(parts[0]) + 2000;
    final month = int.parse(parts[1]);
    final day = int.parse(parts[2]);
    return DateTime(year, month, day);
  }
  throw const FormatException('Invalid date format');
}

class VegeInfoScreen extends ConsumerWidget {
  const VegeInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    final nickName = ref.watch(onBoardingFinishNotifierProvider);

    return Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '채소 정보',
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(myVegeDeleteProvider);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyVegeScreen()),
              );
            },
            icon: SvgPicture.asset('assets/image/ic_list.svg'),
          )
        ],
      ),
      body: veggieList.when(
        data: (veggieListData) {
          final myVeggieId = selectedVegeId ?? veggieListData.first.myVeggieId;
          final AsyncValue<MyVeggieProfile> myVeggieProfile =
              ref.watch(myVeggieProfileProvider(myVeggieId));

          return myVeggieProfile.when(
            data: (profile) {
              final DateTime createdVeggieDate =
                  parseDate(profile.createdVeggie);
              final myVeggieAddData =
                  ref.watch(myVeggieAddNotifierProvider).asData;

              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: VegeInfoDetail(
                              info: {
                                '채소': profile.veggieName,
                                '날짜': profile.createdVeggie,
                                '파머': nickName.value ?? '',
                              },
                              bottomWidget: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, right: 8.0),
                                child: SvgPicture.asset(
                                  'assets/image/logo_farmus.svg',
                                  colorFilter: const ColorFilter.mode(
                                      FarmusThemeColor.gray3, BlendMode.srcIn),
                                ),
                              ),
                              vegeNickname: profile.nickname,
                              farmClubName: null,
                              imageUrl: profile.veggieImage,
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              '채소 별명',
                              style: FarmusThemeTextStyle.darkSemiBold15,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: HomeVegeNameInput(
                              hintText: profile.nickname,
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              '키우기 시작한 날',
                              style: FarmusThemeTextStyle.darkSemiBold15,
                            ),
                          ),
                          FarmusCalender(
                            selectedDay: createdVeggieDate,
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  BottomBackgroundDividerButton(
                    button: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PrimaryColorButton(
                          onPressed: () {
                            if (myVeggieAddData != null) {
                              final createdVeggieDateString =
                                  myVeggieAddData.value.date;
                              final changeName = myVeggieAddData.value.name;

                              ref
                                  .read(myVeggieProfileChangeProvider.notifier)
                                  .putVeggieInfo(
                                    myVeggieId,
                                    changeName.isEmpty
                                        ? profile.nickname
                                        : changeName,
                                    createdVeggieDateString.isEmpty
                                        ? parseDate(profile.createdVeggie)
                                            .toIso8601String()
                                            .split('T')
                                            .first
                                        : createdVeggieDateString,
                                  );
                            }
                          },
                          text: '수정',
                          enabled: (myVeggieAddData?.value.date.isNotEmpty ??
                                  false) ||
                              (myVeggieAddData?.value.name.isNotEmpty ?? false),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
