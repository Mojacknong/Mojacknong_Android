import 'dart:convert';

import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/my_veggie_profile.dart';

part 'my_veggie_profile_notifier.g.dart';

@riverpod
Future<MyVeggieProfile> myVeggieProfile(
    MyVeggieProfileRef ref, String myVeggieId) async {
  final response =
      await MyVeggieGardenRepository.myVeggieProfileList(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return MyVeggieProfile.fromJson(data);
}
