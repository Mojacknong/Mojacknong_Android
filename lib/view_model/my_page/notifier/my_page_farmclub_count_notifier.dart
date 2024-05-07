import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPageFarmclubCountNotifier extends StateNotifier<int> {
  MyPageFarmclubCountNotifier() : super(0);

  void setCountFarmClub(int newClub) {
    state = newClub;
  }

  void incrementClub() {
    state++;
  }
}
