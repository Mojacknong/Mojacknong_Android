import 'dart:convert' as convert;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_page/my_page_info_model.dart';
import '../../model/my_page/my_page_profile_model.dart';
import '../../repository/my_page_repository.dart';
import 'notifier/my_profile_notifier.dart';

part 'my_page_info_provider.g.dart';
final myProfileSetProvider =
StateNotifierProvider.autoDispose<MyProfileNotifier, MyPageProfileModel>(
        (ref) {
      return MyProfileNotifier();
    });

@riverpod
Future<MyPageInfoModel> myPageInfoModel(MyPageInfoModelRef ref) async {
  try {
    final response = await MyPageRepository.myInfo();
    final json = convert.jsonDecode(response) as Map<String, dynamic>;

    if (json['code'] == 200) {
      final data = json['data'] as Map<String, dynamic>;

      final nickName = data['nickName'];
      final userImageUrl = data['userImageUrl'];

      final dday = data['dday'];

      return MyPageInfoModel(
        nickName: nickName,
        userImageUrl: userImageUrl,
        dday: dday,
      );
    } else {
      throw Exception('Error: ${json['message'] ?? 'Unknown error'}');
    }
  } catch (e) {
    print('Error fetching my page info: $e');
    throw Exception('Failed to load my page info');
  }
}
