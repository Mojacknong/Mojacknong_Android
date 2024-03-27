import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/my_farmclub/component/farmclub_widget.dart';
import 'package:farmus/view/my_page/my_farmclub/component/my_farmclub_box.dart';
import 'package:farmus/view_model/my_page/vege_count_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyFarmClubStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? imagePath = 'assets/image/ic_farmclub.png';
  final String? vegeImage;

  const MyFarmClubStackBox({
    Key? key,
    required this.historyType,
    this.image,
    this.vegeImage,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vegeCount = ref.watch(vegeCountProvider);

    return Stack(
      children: [
        const MyFarmClubBox(),
        Padding(
          padding: const EdgeInsets.only(left: 32, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (image != null) ...[
                    Image.asset(
                      imagePath!,
                      height: 22,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: historyType,
                          style: const TextStyle(
                            color: FarmusThemeColor.dark,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' ${vegeCount.toString()}',
                          style: const TextStyle(
                            color: FarmusThemeColor.gray2,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' ${vegeCount.toString()} ',
                      style: const TextStyle(
                        color: FarmusThemeColor.green1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: message,
                      style: const TextStyle(
                        color: FarmusThemeColor.gray1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 90.0, left: 8),
                child: FarmClubWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
