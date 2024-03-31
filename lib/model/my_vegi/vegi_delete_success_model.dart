import 'package:image_picker/image_picker.dart';

class VegiDeleteSuccessModel {
  final String? content;
  final XFile? successImage;

  VegiDeleteSuccessModel({
    required this.content,
    required this.successImage,
  });

  VegiDeleteSuccessModel copyWith({
    String? content,
    XFile? successImage,
  }) {
    return VegiDeleteSuccessModel(content: content, successImage: successImage);
  }
}
