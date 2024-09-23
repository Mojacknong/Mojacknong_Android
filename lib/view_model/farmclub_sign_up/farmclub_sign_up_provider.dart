import 'dart:async';

import 'package:farmus/model/search/search_farmclub_detail_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:farmus/view_model/farmclub_sign_up/toggle_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_sign_up_provider.g.dart';

@riverpod
Future<SearchFarmclubDetailModel> searchFarmclubDetailModel(
    SearchFarmclubDetailModelRef ref, int id) async {
  ref.invalidate(toggleNotifierProvider);

  final repository = SearchFarmclubRepository();
  final response = await repository.farmclubDetail(id);
  return response;

}
