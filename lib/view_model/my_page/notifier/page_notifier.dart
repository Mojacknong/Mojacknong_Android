import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageNotifier extends StateNotifier<String> {
  PageNotifier() : super("first");

  void vegePage() {
    state = "first";
  }

  void clubPage() {
    state = "second";
  }
}
