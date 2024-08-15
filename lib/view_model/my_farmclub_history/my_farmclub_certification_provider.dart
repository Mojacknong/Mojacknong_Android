import 'dart:async';

import 'package:farmus/model/my_farmclub_history/my_farmclub_certification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_history_repository.dart';

part 'my_farmclub_certification_provider.g.dart';

@riverpod
Future<MyFarmclubCertificationModel> myFarmclubCertificationModel(
    MyFarmclubCertificationModelRef ref, String id) async {
  final response = await MyHistoryRepository.certificationDetail(id);
  return response;
}
