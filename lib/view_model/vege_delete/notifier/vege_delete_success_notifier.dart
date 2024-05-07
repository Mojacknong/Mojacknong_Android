import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vege/vege_delete_success_model.dart';

class VegeDeleteSuccessNotifier extends StateNotifier<VegeDeleteSuccessModel> {
  VegeDeleteSuccessNotifier()
      : super(VegeDeleteSuccessModel(
            content: null, image: null, isComplete: false));

  bool _isVegeDeleteComplete = false;

  bool get isVegeDeleteComplete => _isVegeDeleteComplete;

  void updateSuccessImage(XFile? successImage) {
    if (state.content != null && state.content!.isNotEmpty) {
      _isVegeDeleteComplete = true;
    } else {
      _isVegeDeleteComplete = false;
    }

    state = state.copyWith(
      content: state.content,
      image: successImage,
      isComplete: isVegeDeleteComplete,
    );
  }

  void updateContent(String content) {
    if (content.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty) {
      _isVegeDeleteComplete = true;
    } else {
      _isVegeDeleteComplete = false;
    }

    state = state.copyWith(
      content: content,
      image: state.image,
      isComplete: isVegeDeleteComplete,
    );
  }

  void deleteSuccessImage() {
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
