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
    state = state.copyWith(
      content: state.content,
      image: image,
      vegeState: state.vegeState,
      isComplete: isVegeComplete,
    );

    checkVegeComplete();
  }

  void updateContent(String content) {
    state = state.copyWith(
      content: content,
      image: state.image,
      vegeState: state.vegeState,
      isComplete: isVegeComplete,
    );

    checkVegeComplete();
  }

  void deleteImage() {
    state = state.copyWith(
      content: state.content,
      image: null,
      vegeState: state.vegeState,
      isComplete: false,
    );

    checkVegeComplete();
  }

  void updateVegeState(String vegeState) {

    state = state.copyWith(
      content: state.content,
      image: state.image,
      vegeState: vegeState,
      isComplete: isVegeComplete,
    );

    print(vegeState);
    checkVegeComplete();
  }

  void checkVegeComplete() {
    if (state.content != null &&
        state.image != null &&
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
