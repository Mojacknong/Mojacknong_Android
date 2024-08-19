import 'dart:io';

import 'package:farmus/model/home/diary_write_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/diary/farmclub_open_diary_notifier.dart';
import 'package:farmus/view_model/diary/my_veggie_diary_notifier.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../home/notifier/veggie_diary_one_notifier.dart';
import 'diary_check_notifier.dart';

part 'post_diary_notifier.g.dart';

@riverpod
class PostDiaryNotifier extends _$PostDiaryNotifier {
  @override
  Future<DiaryWriteModel> build() async {
    return DiaryWriteModel(
      file: null,
      content: '',
      isOpen: false,
      state: '',
      myVeggieId: -1,
      isComplete: false,
    );
  }

  bool _isVegeComplete = false;

  bool get isVegeComplete => _isVegeComplete;

  void updateImage(XFile? image) {
    state = AsyncData(
      DiaryWriteModel(
        file: image,
        content: state.value!.content,
        isOpen: state.value!.isOpen,
        state: state.value!.state,
        myVeggieId: state.value!.myVeggieId,
      ),
    );
    _checkCompletion();
  }

  void updateContent(String? content) {
    if (content == null) {
      return;
    }
    state = AsyncData(
      DiaryWriteModel(
        file: state.value!.file,
        content: content,
        isOpen: state.value!.isOpen,
        state: state.value!.state,
        myVeggieId: state.value!.myVeggieId,
      ),
    );
    _checkCompletion();
  }

  void deleteImage() {
    state = AsyncData(
      DiaryWriteModel(
        file: null,
        content: state.value!.content,
        isOpen: state.value!.isOpen,
        state: state.value!.state,
        myVeggieId: state.value!.myVeggieId,
      ),
    );
    _checkCompletion();
  }

  void updateVegeState(String vegeState) {
    state = AsyncData(
      DiaryWriteModel(
        file: state.value!.file,
        content: state.value!.content,
        isOpen: state.value!.isOpen,
        state: vegeState,
        myVeggieId: state.value!.myVeggieId,
      ),
    );
    _checkCompletion();
  }

  void _checkCompletion() {
    if (state.value?.content.isNotEmpty == true &&
        state.value?.file?.path.isNotEmpty == true &&
        state.value?.state.isNotEmpty == true) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }
    state = AsyncData(
      DiaryWriteModel(
        file: state.value!.file,
        content: state.value!.content,
        isOpen: state.value!.isOpen,
        state: state.value!.state,
        myVeggieId: state.value!.myVeggieId,
        isComplete: _isVegeComplete,
      ),
    );
  }

  Future<void> postDiary(File image, String content, String state, bool isOpen,
      int myVeggieId) async {
    await MyVeggieGardenRepository.postDiary(
        image, content, isOpen, state, myVeggieId);
    ref.invalidate(farmclubOpenDiaryModelProvider);
    ref.invalidate(myVeggieDiaryNotifierProvider);
    ref.invalidate(veggieDiaryOneModelProvider);
    ref.invalidate(diaryCheckModelProvider);
    ref.invalidateSelf();
  }
}
