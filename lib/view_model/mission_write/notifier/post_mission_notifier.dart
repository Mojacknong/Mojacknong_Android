import 'dart:io';

import 'package:farmus/model/mission/mission_write_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../my_farmclub/my_farmclub_info_notifier.dart';

part 'post_mission_notifier.g.dart';

@riverpod
class PostMissionNotifier extends _$PostMissionNotifier {
  @override
  Future<MissionWriteModel> build() async {
    return MissionWriteModel(
      file: null,
      content: '',
      farmClubId: -1,
      isComplete: false,
    );
  }

  bool _isMissionComplete = false;

  bool get isMissionComplete => _isMissionComplete;

  void updateImage(XFile? image) {
    state = AsyncData(
      MissionWriteModel(
        file: image,
        content: state.value!.content,
        farmClubId: state.value!.farmClubId,
      ),
    );
    _checkCompletion();
  }

  void updateContent(String? content) {
    if (content == null) {
      return;
    }
    state = AsyncData(
      MissionWriteModel(
        file: state.value!.file,
        content: content,
        farmClubId: state.value!.farmClubId,
      ),
    );
    _checkCompletion();
  }

  void deleteImage() {
    state = AsyncData(
      MissionWriteModel(
        file: null,
        content: state.value!.content,
        farmClubId: state.value!.farmClubId,
      ),
    );
    _checkCompletion();
  }

  void _checkCompletion() {
    if (state.value?.content.isNotEmpty == true &&
            state.value?.file?.path.isNotEmpty == true
        // && state.value?.farmClubId.isNotEmpty == true
        ) {
      _isMissionComplete = true;
    } else {
      _isMissionComplete = false;
    }
    state = AsyncData(
      MissionWriteModel(
        file: state.value!.file,
        content: state.value!.content,
        farmClubId: state.value!.farmClubId,
        isComplete: _isMissionComplete,
      ),
    );
  }

  Future<void> postMission(File image, String content, int farmClubId) async {
    await MyFarmclubRepository.postMission(image, content, farmClubId);
    ref.invalidate(myFarmclubInfoModelProvider);
  }
}
