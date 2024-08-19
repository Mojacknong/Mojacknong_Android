import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedDateProvider = StateProvider.autoDispose<String?>(
    (ref) => DateTime.now().toIso8601String().split('T').first);
final selectedMonthProvider = StateProvider.autoDispose<String?>((ref) {
  final nowDate = DateTime.now();
  return '${nowDate.year}-${nowDate.month.toString().padLeft(2, '0')}';
});
