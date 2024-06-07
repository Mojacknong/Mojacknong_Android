import 'dart:async';

import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_sign_veggie_provider.g.dart';

@riverpod
Future<FarmclubSignupModel> farmclubSignupModel(
    FarmclubSignupModelRef ref, String veggieInfoId) async {
  final response = await SearchFarmclubRepository.getMyVeggie(veggieInfoId);

  return response;
}
