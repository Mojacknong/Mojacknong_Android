import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/component/my_history_box.dart';
import 'package:farmus/view/my_page/component/my_vege_image_widget.dart';
import 'package:farmus/view_model/my_page/vege_count_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? vegeImage;

  const MyVegeStackBox({
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
        const MyHistoryBox(),
        Padding(
          padding: const EdgeInsets.only(left: 32, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: historyType,
                            style: FarmusThemeTextStyle.darkSemiBold17),
                        TextSpan(
                            text: ' ${vegeCount.toString()}',
                            style: FarmusThemeTextStyle.gray2SemiBold17),
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
                        style: FarmusThemeTextStyle.green1SemiBold13),
                    TextSpan(
                        text: message,
                        style: FarmusThemeTextStyle.gray1SemiBold13),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 90.0, left: 24, right: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyVegeImageWidget(),
                  MyVegeImageWidget(),
                  MyVegeImageWidget(),
                  MyVegeImageWidget(),
                  MyVegeImageWidget()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
