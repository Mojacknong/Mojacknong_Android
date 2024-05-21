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

  bool _isVegeComplete = false;

  bool get isVegeComplete => _isVegeComplete;

  void updateImage(XFile? image) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        image != null &&
        image.path.isNotEmpty &&
        state.content!.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }

    state = state.copyWith(
      content: state.content,
      image: image,
      isComplete: isVegeComplete,
    );
  }

  void updateContent(String content) {
    if (content.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty &&
        state.content!.isNotEmpty) {
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
    state = state.copyWith(
      content: state.content,
      image: null,
      isComplete: false,
    );
  }

  void checkVegeComplete(String? content, XFile? image) {
    if (state.content != null &&
        state.content!.isNotEmpty &&
        state.image != null &&
        state.image!.path.isNotEmpty &&
        state.content!.isNotEmpty) {
      _isVegeComplete = true;
    } else {
      _isVegeComplete = false;
    }
  }
}
