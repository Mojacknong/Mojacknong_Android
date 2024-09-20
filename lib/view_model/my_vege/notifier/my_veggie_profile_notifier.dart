import 'dart:convert';

import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/my_veggie_profile.dart';
import 'my_veggie_list.dart';

part 'my_veggie_profile_notifier.g.dart';

@riverpod
Future<MyVeggieProfile> myVeggieProfile(
    MyVeggieProfileRef ref, int? myVeggieId) async {
  if (myVeggieId == null) {
    final veggieList = await ref.watch(myVeggieListModelProvider.future);
    myVeggieId = veggieList.first.myVeggieId.toInt();
  }

  final response =
      await MyVeggieGardenRepository.myVeggieProfileList(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return MyVeggieProfile.fromJson(data);
}
