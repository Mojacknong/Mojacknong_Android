import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../model/farmclub_open/farmclub_vege_list_model.dart';

class FarmclubOpenInfoNotifier extends StateNotifier<FarmclubVegeListModel> {
  FarmclubOpenInfoNotifier()
      : super(const FarmclubVegeListModel(
    farmClubName: '',
    farmClubDescription: '',
    maxMemberCount: 0,
    startDate: '',
    myVeggieId: 0,
    veggieInfoId: '',
    isFarmclubOpenInfoComplete: false,
  ));

  void reset() {
    state = const FarmclubVegeListModel(
      farmClubName: '',
      farmClubDescription: '',
      maxMemberCount: 0,
      startDate: '',
      myVeggieId: 0,
      veggieInfoId: '',
      isFarmclubOpenInfoComplete: false,
    );
  }


  void updateFarmclubName(String farmClubName) {
    state = state.copyWith(farmClubName: farmClubName);
    _updateFarmclubOpenInfoStatus();
  }

  void updateFarmclubDescription(String farmClubDescription) {
    state = state.copyWith(farmClubDescription: farmClubDescription);
    _updateFarmclubOpenInfoStatus();
  }

  void updateMaxMemberCount(int maxMemberCount) {
    state = state.copyWith(maxMemberCount: maxMemberCount);
    _updateFarmclubOpenInfoStatus();
  }

  void updateStartDate(String startDate) {
    state = state.copyWith(startDate: startDate);
    _updateFarmclubOpenInfoStatus();
  }

  void updateMyVeggieId(int myVeggieId) {
    state = state.copyWith(myVeggieId: myVeggieId);
    _updateFarmclubOpenInfoStatus();
  }

  void updateVeggieInfoId(String veggieInfoId) {
    state = state.copyWith(veggieInfoId: veggieInfoId);
    _updateFarmclubOpenInfoStatus();
  }

  void _updateFarmclubOpenInfoStatus() {
    state = state.copyWith(
        isFarmclubOpenInfoComplete: state.farmClubName!= '' &&
            state.farmClubDescription!= '' &&
            state.maxMemberCount != 0 &&
            state.startDate!= '' );
  }
}
