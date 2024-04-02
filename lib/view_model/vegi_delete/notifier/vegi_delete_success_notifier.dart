import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/my_vegi/vegi_delete_success_model.dart';

class VegiDeleteSuccessNotifier extends StateNotifier<VegiDeleteSuccessModel> {
  VegiDeleteSuccessNotifier()
      : super(VegiDeleteSuccessModel(
            content: null, successImage: null, isComplete: false));

  void updateSuccessImage(XFile? successImage) {
    state = state.copyWith(
      content: state.content,
      successImage: successImage,
    );
  }

  void updateContent(String content) {
    state = state.copyWith(
      content: content,
      successImage: state.successImage,
    );
  }

  void deleteSuccessImage() {
    state = state.copyWith(
      content: state.content,
      successImage: null,
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
