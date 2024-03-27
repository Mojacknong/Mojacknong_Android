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

final buildContextProvider = Provider<BuildContext>((ref) {
  throw UnimplementedError();
});
