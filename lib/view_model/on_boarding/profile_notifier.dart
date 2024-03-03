import 'package:farmus/model/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<Profile> {
  ProfileNotifier() : super(Profile(nickname: '', profileImage: ''));

  void updateNickname(String nickname) {
  }
}
