import 'dart:io';

import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view_model/vegi_delete/vegi_delete_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/farmus_image_picker.dart';

class VegiDeleteSuccess extends ConsumerStatefulWidget {
  const VegiDeleteSuccess({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VegiDeleteSuccessState();
}

class _VegiDeleteSuccessState extends ConsumerState<VegiDeleteSuccess> {
  @override
  Widget build(BuildContext context) {
    var successImage = ref.watch(vegiDeleteSuccessProvider).successImage;

    void showActionSheet(BuildContext context) {
      FarmusImagePicker.showActionSheet(context, (value) {
        if (value != null) {
          setState(() {
            successImage = value;
            ref.read(vegiDeleteSuccessProvider.notifier).updateSuccessImage(successImage);
          });
        }
      });
    }

    return Column(
      children: [
        const MainSubTitle(
          mainText: '축하해요!\n홈파밍 결과를 기록해주세요.',
          subText: '나중에 마이페이지에서 등록 가능해요',
        ),
        const SizedBox(
          height: 16,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                color: FarmusThemeColor.green5,
                borderRadius: BorderRadius.circular(12),
              ),
              child: (successImage == null)
                  ? null
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
                        File(successImage!.path),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 240,
                      ),
                    ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: FarmusThemeColor.white.withOpacity(0.6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        (successImage == null)
                            ? showActionSheet(context)
                            : ref.read(vegiDeleteSuccessProvider.notifier).deleteSuccessImage();
                      },
                      child: (successImage == null)
                          ? SvgPicture.asset('assets/image/ic_camera.svg',
                              colorFilter: const ColorFilter.mode(
                                  FarmusThemeColor.dark, BlendMode.srcIn))
                          : SvgPicture.asset('assets/image/ic_close.svg',
                              colorFilter: const ColorFilter.mode(
                                  FarmusThemeColor.dark, BlendMode.srcIn)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
