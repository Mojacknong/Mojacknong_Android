import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_sign_up/farmclub_sign_up_screen.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchVegeInfo extends ConsumerWidget {
  const SearchVegeInfo(
      {Key? key,
      required this.day,
      required this.total,
      required this.num,
      required this.id})
      : super(key: key);

  final String day;
  final int total;
  final int num;
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmclubDetailAsyncValue = ref.watch(farmclubDetailProvider(id));
    return farmclubDetailAsyncValue.when(
      data: (farmclubDetailModel) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FarmclubSignUpScreen(
                  id: farmclubDetailModel.farmClubId,
                ),
              ),
            );
          },
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: VegeInfoDetail(
                info: {
                  '채소': farmclubDetailModel.veggieName,
                  '시작': farmclubDetailModel.startedAt,
                  '인원':
                      '${farmclubDetailModel.currentMemberCount}/${farmclubDetailModel.maxMemberCount}명',
                },
                farmClubName: farmclubDetailModel.farmClubName,
                imageUrl: farmclubDetailModel.veggieImage,
                bottomWidgetAlignment: Alignment.centerLeft,
                bottomWidget: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    farmclubDetailModel.farmClubDescription,
                    style: FarmusThemeTextStyle.gray1Medium13,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) =>
          Center(child: Text('Failed to load data: $error')),
    );
  }
}
