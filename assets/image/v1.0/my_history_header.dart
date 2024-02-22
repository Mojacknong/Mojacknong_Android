import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/my_page/history/my_vege_history.dart';

class HistoryHeader extends StatelessWidget {
  final String historyType;

  const HistoryHeader({
    Key? key,
    required this.historyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 페이지 이동 함수
    void _navigateToMyVegeHistoryPage() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MyVegeHistory(),
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                historyType,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap:
                    _navigateToMyVegeHistoryPage, // '더보기'를 탭하면 _navigateToNewPage 함수 실행
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '더보기',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: FarmusThemeData.grey1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4), // 아이콘과 텍스트 사이의 간격
                    SvgPicture.asset(
                      "assets/image/arrow_right_mypage.svg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: FarmusThemeData.grey2,
          height: 1,
          thickness: 1,
          indent: 16.0,
          endIndent: 16.0,
        ),
      ],
    );
  }
}
