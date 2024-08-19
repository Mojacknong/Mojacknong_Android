import 'package:image_picker/image_picker.dart';

class DiaryWriteModel {
  final XFile? file;
  final String content;
  final bool isOpen;
  final String state;
  final int myVeggieId;
  final bool? isComplete;

  DiaryWriteModel(
      {this.file,
      required this.content,
      required this.isOpen,
      required this.state,
      required this.myVeggieId,
      this.isComplete});
}
