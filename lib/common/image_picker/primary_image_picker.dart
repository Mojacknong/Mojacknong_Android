import 'dart:io';

import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../bottom_sheet/farmus_image_picker.dart';
import '../theme/farmus_theme_color.dart';

class PrimaryImagePicker extends ConsumerStatefulWidget {
  const PrimaryImagePicker(
      {super.key,
      this.nullChild,
      this.boxDecoration,
      this.addImage,
      this.deleteImage});

  final Widget? nullChild;
  final BoxDecoration? boxDecoration;
  final void Function(XFile)? addImage;
  final void Function()? deleteImage;

  @override
  ConsumerState createState() => _PrimaryImagePickerState();
}

class _PrimaryImagePickerState extends ConsumerState<PrimaryImagePicker> {
  var successImage;

  XFile? file;

  void showActionSheet(BuildContext context) {
    FarmusImagePicker.showActionSheet(
      context,
      (value) {
        if (value != null) {
          setState(() {
            successImage = value;
            widget.addImage;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final nullChild = widget.nullChild;
    final boxDecoration = widget.boxDecoration;
    final deleteImage = widget.deleteImage;

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
                  padding: const EdgeInsets.all(90.0),
                  child: nullChild ??
                      const Column(
                        children: [
                          Text(
                            '사진',
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
                  onTap: () {
                    (successImage == null)
                        ? showActionSheet(context)
                        : deleteImage;
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
