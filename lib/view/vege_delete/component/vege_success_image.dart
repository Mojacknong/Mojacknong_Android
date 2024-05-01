import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/bottom_sheet/farmus_image_picker.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../view_model/vege_delete/vege_delete_provider.dart';

class VegeSuccessImage extends ConsumerStatefulWidget {
  const VegeSuccessImage({super.key});

  @override
  ConsumerState createState() => _VegeSuccessImageState();
}

class _VegeSuccessImageState extends ConsumerState<VegeSuccessImage> {
  @override
  Widget build(BuildContext context) {
    var successImage = ref.watch(vegeDeleteSuccessProvider).image;
    void showActionSheet(BuildContext context) {
      FarmusImagePicker.showActionSheet(context, (value) {
        if (value != null) {
          setState(() {
            successImage = value;
            ref
                .read(vegeDeleteSuccessProvider.notifier)
                .updateSuccessImage(successImage);
          });
        }
      });
    }

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: FarmusThemeColor.green5,
            borderRadius: BorderRadius.circular(12),
          ),
          child: (successImage == null)
              ? Padding(
                padding: const EdgeInsets.all(24.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/image/img_vege_success.png',
                      fit: BoxFit.contain,
                    ),
                  ),
              )
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
                        : ref
                            .read(vegeDeleteSuccessProvider.notifier)
                            .deleteSuccessImage();
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
    );
  }
}
