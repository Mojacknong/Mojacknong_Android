import 'package:image_picker/image_picker.dart';

class VegiDeleteSuccessModel {
  final String? content;
  final XFile? successImage;
  final bool? isComplete;

  VegiDeleteSuccessModel({
    required this.content,
    required this.successImage,
    required this.isComplete,
  });

  VegiDeleteSuccessModel copyWith({
    String? content,
    XFile? successImage,
    bool? isComplete,
  }) {
    return VegiDeleteSuccessModel(
      content: content,
      successImage: successImage,
      isComplete: isComplete,
    );
  }
}
