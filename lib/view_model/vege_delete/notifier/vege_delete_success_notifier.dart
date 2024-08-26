import 'package:farmus/model/my_farmclub_history/veggie_success_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vege_delete_success_notifier.g.dart';


@riverpod
class VegeDeleteSuccessNotifier extends _$VegeDeleteSuccessNotifier {
  @override
  Future<VeggieSuccessModel> build() async {
    return VeggieSuccessModel(
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
      VeggieSuccessModel(
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
      VeggieSuccessModel(
        file: state.value!.file,
        content: content,
        veggieId: state.value!.veggieId,
      ),
    );
    _checkCompletion();
  }

  void deleteImage() {
    state = AsyncData(
      VeggieSuccessModel(
        file: null,
        content: state.value!.content,
        veggieId: state.value!.veggieId,
      ),
    );
    _checkCompletion();
  }

  void _checkCompletion() {
    if (state.value?.content.isNotEmpty == true &&
        state.value?.file?.path.isNotEmpty == true
    ) {
      _isVegeDeleteComplete = true;
    } else {
      _isVegeDeleteComplete = false;
    }
    state = AsyncData(
      VeggieSuccessModel(
        file: state.value!.file,
        content: state.value!.content,
        veggieId: state.value!.veggieId,
        isComplete: _isVegeDeleteComplete,
      ),
    );
  }
}
