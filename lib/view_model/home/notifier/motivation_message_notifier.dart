import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/motivation_message_model.dart';
import '../../../repository/my_veggie_garden_repository.dart';

part 'motivation_message_notifier.g.dart';

@riverpod
Future<MotivationMessageModel> motivationMessage(
    MotivationMessageRef ref) async {

  final response = await MyVeggieGardenRepository.motivationMessage();
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return MotivationMessageModel.fromJson(data);
}
