import 'package:farmus/model/mission/mission_write_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class MissionWriteNotifier extends StateNotifier<MissionWriteModel> {
  MissionWriteNotifier()
      : super(MissionWriteModel(
    content: null,
    image: null,
    isComplete: false,
  ));

  bool _isComplete = false;

  bool get isComplete => _isComplete;

  void updateImage(XFile? image) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        image != null &&
        image.path.isNotEmpty) {
      _isComplete = true;
    } else {
      _isComplete = false;
    }

    state = state.copyWith(
      content: state.content,
      image: image,
      isComplete: _isComplete,
    );
  }

  void updateContent(String? content) {
    if (content == null) {
      return;
    }
    if (content.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty) {
      _isComplete = true;
    } else {
      _isComplete = false;
    }

    state = state.copyWith(
      content: content,
      image: state.image,
      isComplete: _isComplete,
    );
  }

  void deleteImage() {
    state = state.copyWith(
      content: state.content,
      image: null,
      isComplete: false,
    );
  }

  void checkComplete(String? content, XFile? image) {
    if (content != null &&
        content.isNotEmpty &&
        image != null &&
        image.path.isNotEmpty) {
      _isComplete = true;
    } else {
      _isComplete = false;
    }
  }
}
