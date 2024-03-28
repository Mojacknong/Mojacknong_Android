import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmClubCountNotifier extends StateNotifier<int> {
  FarmClubCountNotifier() : super(0);

  void setCountFarmClub(int newClub) {
    state = newClub;
  }

  void incrementClub() {
    state++;
  }
}
