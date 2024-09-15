import 'dart:io';

import 'package:farmus/model/my_farmclub_history/veggie_delete_success_model.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_info_notifier.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/my_veggie_garden_repository.dart';
import '../../my_vege/notifier/my_veggie_list.dart';

part 'vege_delete_success_notifier.g.dart';

@riverpod
class VegeDeleteSuccessNotifier extends _$VegeDeleteSuccessNotifier {
  @override
  Future<VeggieDeleteSuccessModel> build() async {
    return VeggieDeleteSuccessModel(
      file: null,
      content: '',
      veggieId: -1,
      isComplete: false,
    );
  }

  bool _isVegeDeleteComplete = false;

  bool get isVegeDeleteComplete => _isVegeDeleteComplete;

  void updateImage(XFile? image) {
    state = AsyncData(
      VeggieDeleteSuccessModel(
        file: image,
        content: state.value!.content,
        veggieId: state.value!.veggieId,
      ),
    );
    _checkCompletion();
  }

  void updateContent(String? content) {
    if (content == null) {
      return;
    }
    state = AsyncData(
      VeggieDeleteSuccessModel(
        file: state.value!.file,
        content: content,
        veggieId: state.value!.veggieId,
      ),
    );
    _checkCompletion();
  }

  void deleteImage() {
    state = AsyncData(
      VeggieDeleteSuccessModel(
        file: null,
        content: state.value!.content,
        veggieId: state.value!.veggieId,
      ),
    );
    _checkCompletion();
  }

  void _checkCompletion() {
    if (state.value?.content.isNotEmpty == true &&
        state.value?.file?.path.isNotEmpty == true) {
      _isVegeDeleteComplete = true;
    } else {
      _isVegeDeleteComplete = false;
    }
    state = AsyncData(
      VeggieDeleteSuccessModel(
        file: state.value!.file,
        content: state.value!.content,
        veggieId: state.value!.veggieId,
        isComplete: _isVegeDeleteComplete,
      ),
    );
  }

  Future<void> myVeggieSuccess(
      File image, String content, int myVeggieId) async {
    await MyVeggieGardenRepository.myVeggieSuccess(image, content, myVeggieId);

    ref.invalidateSelf();
    ref.invalidate(myVeggieListModelProvider);
    ref.invalidate(myVeggieInfoProvider);
  }
}
