import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class FarmusImagePicker {
  static Future<XFile?> pickGalleryImage(BuildContext context) async {
    return ImagePicker().pickImage(source: ImageSource.gallery);
  }

  static Future<XFile?> pickCameraImage(BuildContext context) async {
    return ImagePicker().pickImage(source: ImageSource.camera);
  }

  static void showActionSheet(
      BuildContext context, Function(XFile?) onImagePicked) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          "프로필 사진",
          style: FarmusThemeTextStyle.gray2Medium12,
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              pickGalleryImage(context).then((value) {
                onImagePicked(value);
                Navigator.pop(context);
              });
            },
            child: const Text(
              "앨범에서 사진 선택",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              pickCameraImage(context).then((value) {
                onImagePicked(value);
                Navigator.pop(context);
              });
            },
            child: const Text(
              "사진 촬영",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "취소",
            style: FarmusThemeTextStyle.darkMedium15,
          ),
        ),
      ),
    );
  }
}
