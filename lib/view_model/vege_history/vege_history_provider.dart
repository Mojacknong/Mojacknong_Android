// TabController를 제공하는 Provide
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tabControllerProvider = Provider.autoDispose<TabController>((ref) {
  final BuildContext context = ref.watch(buildContextProvider);
  final tabController = TabController(length: 2, vsync: Navigator.of(context));
  ref.onDispose(() {
    tabController.dispose();
  });
  return tabController;
});

// BuildContext를 제공하는 Provider를 정의합니다. 이는 TabController 생성시 필요한 vsync에 사용됩니다.
final buildContextProvider = Provider<BuildContext>((ref) {
  throw UnimplementedError();
});
