import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vegi/vegi_delete_success_model.dart';

class VegiDeleteSuccessNotifier extends StateNotifier<VegiDeleteSuccessModel> {
  VegiDeleteSuccessNotifier()
      : super(VegiDeleteSuccessModel(
            content: null, successImage: null, isComplete: false));

  bool _isVegiDeleteComplete = false;

  bool get isVegiDeleteComplete => _isVegiDeleteComplete;

  void updateSuccessImage(XFile? successImage) {
    if (state.content != null && state.content!.isNotEmpty) {
      _isVegiDeleteComplete = true;
    } else {
      _isVegiDeleteComplete = false;
    }

    print("$isVegiDeleteComplete");
    state = state.copyWith(
      content: state.content,
      successImage: successImage,
      isComplete: isVegiDeleteComplete,
    );
  }

  void updateContent(String content) {
    if (content.isNotEmpty &&
        state.successImage != null &&
        state.successImage!.path.isNotEmpty) {
      _isVegiDeleteComplete = true;
    } else {
      _isVegiDeleteComplete = false;
    }

    state = state.copyWith(
      content: content,
      successImage: state.successImage,
      isComplete: isVegiDeleteComplete,
    );
  }

  void deleteSuccessImage() {
    state = state.copyWith(
      content: state.content,
      successImage: null,
      isComplete: false,
    );
  }

  void reset() {
    state = state.copyWith(
      content: null,
      successImage: null,
      isComplete: false,
    );
  }
}
