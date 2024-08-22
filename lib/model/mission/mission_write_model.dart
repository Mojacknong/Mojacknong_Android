import 'package:image_picker/image_picker.dart';

class MissionWriteModel {
  final XFile? file;
  final String content;
  final int farmClubId;
  final bool? isComplete;


  MissionWriteModel(
      {this.file,
        required this.content,
        required this.farmClubId,
        this.isComplete,
    });
}
