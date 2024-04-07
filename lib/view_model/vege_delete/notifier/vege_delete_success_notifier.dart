import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vege/vege_delete_success_model.dart';


class VegeDeleteSuccessNotifier extends StateNotifier<VegeDeleteSuccessModel> {
  VegeDeleteSuccessNotifier()
      : super(VegeDeleteSuccessModel(
            content: null, successImage: null, isComplete: false));

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
      successImage: successImage,
      isComplete: isVegeDeleteComplete,
    );
  }

  void updateContent(String content) {
    if (content.isNotEmpty &&
        state.successImage != null &&
        state.successImage!.path.isNotEmpty) {
      _isVegeDeleteComplete = true;
    } else {
      _isVegeDeleteComplete = false;
    }

    state = state.copyWith(
      content: content,
      successImage: state.successImage,
      isComplete: isVegeDeleteComplete,
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
