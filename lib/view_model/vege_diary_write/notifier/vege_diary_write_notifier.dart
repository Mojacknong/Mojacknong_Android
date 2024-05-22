import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vege/vege_diary_write_model.dart';

class VegeDiaryWriteNotifier extends StateNotifier<VegeDiaryWriteModel> {
  VegeDiaryWriteNotifier()
      : super(VegeDiaryWriteModel(
          content: null,
          image: null,
          vegeState: null,
          isComplete: false,
        ));

  bool _isVegeComplete = false;

  bool get isVegeComplete => _isVegeComplete;

  void updateImage(XFile? image) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        image != null &&
        image.path.isNotEmpty &&
        state.vegeState != null) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    state = state.copyWith(
      content: state.content,
      image: image,
      vegeState: state.vegeState,
      isComplete: isVegeComplete,
    );
  }

  void updateContent(String? content) {
    if (content == null) {
      return;
    }
    if (content.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty &&
        state.vegeState != null &&
        state.content!.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    state = state.copyWith(
      content: content,
      image: state.image,
      vegeState: state.vegeState,
      isComplete: isVegeComplete,
    );
  }

  void deleteImage() {
    state = state.copyWith(
      content: state.content,
      image: null,
      vegeState: state.vegeState,
      isComplete: false,
    );
  }

  void updateVegeState(String vegeState) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty &&
        vegeState.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    state = state.copyWith(
      content: state.content,
      image: state.image,
      vegeState: vegeState,
      isComplete: isVegeComplete,
    );
  }

  void checkVegeComplete(String? content, XFile? image, String? vegeState) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty &&
        state.vegeState != null) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }
  }

  void reset() {
    state = state.copyWith(
      content: null,
      image: null,
      vegeState: null,
      isComplete: false,
    );
  }
}
