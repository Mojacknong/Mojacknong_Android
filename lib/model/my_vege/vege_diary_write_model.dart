import 'package:image_picker/image_picker.dart';

class VegeDiaryWriteModel {
  final String? content;
  final XFile? image;
  final bool isComplete;
  final String? vegeState;

  VegeDiaryWriteModel(
      {required this.content,
      required this.image,
      required this.isComplete,
      required this.vegeState});

  VegeDiaryWriteModel copyWith(
      {String? content,
      XFile? image,
      required bool isComplete,
      String? vegeState}) {
    return VegeDiaryWriteModel(
      content: content,
      image: image,
      isComplete: isComplete,
      vegeState: vegeState,
    );
  }
}
