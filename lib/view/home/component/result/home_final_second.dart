
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/community/component/image_add.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_dialog.dart';
import 'package:mojacknong_android/view/home/component/result/home_text_controller.dart';

class HomeFinalSecond extends StatefulWidget {
  const HomeFinalSecond({Key? key}) : super(key: key);

  @override
  _HomeFinalSecond createState() => _HomeFinalSecond();
}

const int maxLengthTitle = 20;
const int maxLengthContent = 50;

class _HomeFinalSecond extends State<HomeFinalSecond> {
  final HomeTextController _homeTextController = Get.put(HomeTextController());

  final TextEditingController _contentController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;
  bool isSwitched = false;

  List<String> motivation = [];

  @override
  void dispose() {
    // postDone();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _contentController.addListener(() {
      setState(() {});
    });
  }

  void _getImageFromGallery(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
      _homeTextController.setImageFile(File(pickedFile.path));
    }
  }

  late List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                _getImageFromGallery(
                  ImageSource.gallery,
                );
              },
              child: Container(
                width: double.infinity,
                height: 248,
                decoration: BoxDecoration(
                  color: FarmusThemeData.pictureBackground,
                  borderRadius: BorderRadius.circular(16),
                  image: _selectedImage != null
                      ? DecorationImage(
                          image: FileImage(_selectedImage!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: _selectedImage == null
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageAdd(
                              title: "사진 추가하기",
                            ),
                          ],
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.file(
                          _selectedImage!,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
            SizedBox(
              height: 230,
              child: TextFormField(
                controller: _contentController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: '내용을 작성해주세요.',
                  hintStyle: TextStyle(
                    color: FarmusThemeData.dark.withOpacity(0.3),
                  ),
                  counterText: "",
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                maxLength: maxLengthContent,
                onChanged: _homeTextController.updateContentValue,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Obx(
                () => Text(
                  "${_homeTextController.contentValue.value.length} / $maxLengthContent",
                  style: TextStyle(
                    color: FarmusThemeData.dark.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  void showHomeFinalDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: FarmusThemeData.grey1,
      builder: (BuildContext context) {
        return const HomeFinalDialog();
      },
    );
  }
}
