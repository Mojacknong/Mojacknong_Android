import 'dart:io';

import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../bottom_sheet/farmus_image_picker.dart';
import '../theme/farmus_theme_color.dart';

class PrimaryImagePicker extends ConsumerStatefulWidget {
  const PrimaryImagePicker({super.key, this.nullChild, this.boxDecoration});

  final Widget? nullChild;
  final BoxDecoration? boxDecoration;

  @override
  ConsumerState createState() => _PrimaryImagePickerState();
}

class _PrimaryImagePickerState extends ConsumerState<PrimaryImagePicker> {
  var successImage;

  void showActionSheet(BuildContext context) {
    FarmusImagePicker.showActionSheet(
      context,
      (value) {
        if (value != null) {
          setState(() {
            successImage = value;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final nullChild = widget.nullChild;
    final boxDecoration = widget.boxDecoration;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: boxDecoration ??
              BoxDecoration(
                color: FarmusThemeColor.gray4,
                borderRadius: BorderRadius.circular(12),
              ),
          child: (successImage == null)
              ? Padding(
                  padding: const EdgeInsets.all(72.0),
                  child: nullChild ??
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                                SvgPicture.asset('assets/image/ic_camera.svg'),
                          ),
                          const Text(
                            '사진 추가하기',
                            style: FarmusThemeTextStyle.gray2Reqular11,
                          ),
                        ],
                      ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    File(successImage!.path),
                    fit: BoxFit.cover,
                    width: double.infinity,
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
                  onTap: () {},
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
