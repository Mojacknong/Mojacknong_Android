import 'dart:io';

import 'package:farmus/model/my_page/my_page_profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_page_info_change_notifier.g.dart';

@riverpod
class MyPageInfoChangeNotifier extends _$MyPageInfoChangeNotifier {
  @override
  Future<MyPageProfileModel> build() async {
    return MyPageProfileModel(
      nickname: '',
      image: File(''),
    );
  }

  void updateNickname(String nickname) {
    state = AsyncData(MyPageProfileModel(
        nickname: nickname,
        image: state.value!.image,
        isInfoChangeComplete: state.value!.isInfoChangeComplete));
  }

  void updateImage(File image) {
    state = AsyncData(MyPageProfileModel(
        nickname: state.value!.nickname,
        image: image,
        isInfoChangeComplete: state.value!.isInfoChangeComplete));
  }
}
