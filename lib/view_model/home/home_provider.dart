import 'package:farmus/view_model/home/notifier/to_do_notifier.dart';
import 'package:farmus/view_model/my_farmclub/my_farmclub_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeToDoProvider = StateNotifierProvider<ToDoNotifier, String>((ref) {
  return ToDoNotifier();
});

final selectedVeggieIdProvider = StateProvider<int?>((ref) => null);
final selectedFarmclubIdProvider = StateProvider<int?>((ref) => null);
