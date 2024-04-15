import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/image_picker/primary_image_picker.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_bottom.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/theme/farmus_theme_color.dart';
import '../vege_delete/component/content_input_text_form.dart';

class VegeDiaryWriteScreen extends ConsumerWidget {
  const VegeDiaryWriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool enabled = false;

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_close.svg"),
        ),
        title: "일기 쓰기",
        centerTitle: false,
        actions: [
          PrimaryButton(
            enabled: enabled,
            textColor:
                enabled ? FarmusThemeColor.white : FarmusThemeColor.white,
            backgroundColor:
                enabled ? FarmusThemeColor.primary : FarmusThemeColor.gray3,
            borderColor: FarmusThemeColor.white,
            borderRadius: 20,
            fontSize: 13,
            onPressed: () {},
            text: '완료',
            fontPadding: 0,
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 48.0,
                      vertical: 8.0,
                    ),
                    child: PrimaryImagePicker(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ContentInputTextForm(
                      maxLength: 300,
                    ),
                  ),
                  VegeDiaryWriteState(),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: FarmusThemeColor.gray4,
                ),
              ),
              VegeDiaryWriteBottom()
            ],
          ),
        ],
      ),
    );
  }
}
