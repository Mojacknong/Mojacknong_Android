import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/component/my_history_box.dart';
import 'package:farmus/view/my_page/component/my_page_veges.dart';
import 'package:farmus/view_model/my_page/notifier/vege_count_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? imagePath = 'assets/image/ic_farmclub.png';
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
        const MyVegeBox(),
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
              const SizedBox(height: 26),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],
          ),
        ),
        const Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 90.0),
            child: Row(
              children: [VegeImageWidget()],
            ),
          ),
        ),
      ],
    );
  }
}
