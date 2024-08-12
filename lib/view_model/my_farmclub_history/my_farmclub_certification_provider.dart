import 'dart:async';

import 'package:farmus/model/my_farmclub_history/my_farmclub_certification_model.dart';
import 'package:farmus/repository/my_farmclub_history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_farmclub_certification_provider.g.dart';

@riverpod
Future<MyFarmclubCertificationModel> myFarmclubCertificationModel(
    MyFarmclubCertificationModelRef ref, String id) async {
  final repository = MyFarmclubHistoryRepository();
  final response = await repository.certificationDetail(id);
  return response;
}
