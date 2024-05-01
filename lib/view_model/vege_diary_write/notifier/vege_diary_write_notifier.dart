import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vege/vege_diary_write_model.dart';

class VegeDiaryWriteNotifier extends StateNotifier<VegeDiaryWriteModel> {
  VegeDiaryWriteNotifier()
      : super(
            VegeDiaryWriteModel(content: null, image: null, isComplete: false));

  bool _isVegeComplete = false;

  bool get isVegeComplete => _isVegeComplete;

  void updateImage(XFile? image) {
    if (state.content != null && state.content!.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    print(image);

    state = state.copyWith(
      content: state.content,
      image: image,
      isComplete: isVegeComplete,
    );
  }

  void updateContent(String content) {
    if (content.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    state = state.copyWith(
      content: content,
      image: state.image,
      isComplete: isVegeComplete,
    );
  }

  void deleteImage() {
    print(state.image);

    state = state.copyWith(
      content: state.content,
      image: null,
      isComplete: false,
    );
  }

  void reset() {
    state = state.copyWith(
      content: null,
      image: null,
      isComplete: false,
    );
  }
}
