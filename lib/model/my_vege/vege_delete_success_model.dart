import 'package:image_picker/image_picker.dart';

class VegeDeleteSuccessModel {
  final String? content;
  final XFile? successImage;
  final bool? isComplete;

  VegeDeleteSuccessModel({
    required this.content,
    required this.successImage,
    required this.isComplete,
  });

  VegeDeleteSuccessModel copyWith({
    String? content,
    XFile? successImage,
    bool? isComplete,
  }) {
    return VegeDeleteSuccessModel(
      content: content,
      successImage: successImage,
      isComplete: isComplete,
    );
  }
}
