import 'package:farmus/data/network/farmclub_open_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../model/farmclub_open/farmclub_vege_list_model.dart';

part 'farmclub_open_info_notifier.g.dart';

@riverpod
class FarmclubOpenInfoNotifier extends _$FarmclubOpenInfoNotifier {
  @override
  Future<FarmclubVegeListModel> build() async {
    return  const FarmclubVegeListModel(
      selectedVege : 0,
      farmClubName: '',
      farmClubDescription: '',
      maxMemberCount: 0,
      startDate: '',
      myVeggieId: 0,
      veggieInfoId: '',
      isFarmclubOpenInfoComplete: false,
    );
  }


  void vegeSelectBox() {
    state = const AsyncData( FarmclubVegeListModel(
      selectedVege: 0,
      farmClubName: '',
      farmClubDescription: '',
      maxMemberCount: 0,
      startDate: '',
      myVeggieId: 0,
      veggieInfoId: '',
      isFarmclubOpenInfoComplete: false,)
    );
  }

  void selectBox(int boxIndex) {
    state = AsyncData(
      FarmclubVegeListModel(
          selectedVege : boxIndex,
          farmClubName: state.value!.farmClubName,
          farmClubDescription: state.value!.farmClubDescription,
          maxMemberCount: state.value!.maxMemberCount,
          startDate: state.value!.startDate,
          myVeggieId: state.value!.myVeggieId,
          veggieInfoId: state.value!.veggieInfoId,
          isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }


  void updateFarmclubName(String farmClubName) {
    state =  AsyncData(FarmclubVegeListModel(
      selectedVege : state.value!.selectedVege,
      farmClubName: farmClubName,
      farmClubDescription: state.value!.farmClubDescription,
      maxMemberCount: state.value!.maxMemberCount,
      startDate: state.value!.startDate,
      myVeggieId: state.value!.myVeggieId,
      veggieInfoId: state.value!.veggieInfoId,
      isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void updateFarmclubDescription(String farmClubDescription) {
    state =  AsyncData(FarmclubVegeListModel(
        selectedVege : state.value!.selectedVege,
        farmClubName: state.value!.farmClubName,
        farmClubDescription: farmClubDescription,
        maxMemberCount: state.value!.maxMemberCount,
        startDate: state.value!.startDate,
        myVeggieId: state.value!.myVeggieId,
        veggieInfoId: state.value!.veggieInfoId,
        isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void updateMaxMemberCount(int maxMemberCount) {
    state =  AsyncData(FarmclubVegeListModel(
        selectedVege : state.value!.selectedVege,
        farmClubName: state.value!.farmClubName,
        farmClubDescription: state.value!.farmClubDescription,
        maxMemberCount: maxMemberCount,
        startDate: state.value!.startDate,
        myVeggieId: state.value!.myVeggieId,
        veggieInfoId: state.value!.veggieInfoId,
        isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void updateDateFormatted(DateTime date) {
    final formattedDate =
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
    updateStartDate(formattedDate);
  }

  void updateStartDate(String startDate) {
    state =  AsyncData(FarmclubVegeListModel(
        selectedVege : state.value!.selectedVege,
        farmClubName: state.value!.farmClubName,
        farmClubDescription: state.value!.farmClubDescription,
        maxMemberCount: state.value!.maxMemberCount,
        startDate: startDate,
        myVeggieId: state.value!.myVeggieId,
        veggieInfoId: state.value!.veggieInfoId,
        isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void updateMyVeggieId(int myVeggieId) {
    state =  AsyncData(FarmclubVegeListModel(
        selectedVege : state.value!.selectedVege,
        farmClubName: state.value!.farmClubName,
        farmClubDescription: state.value!.farmClubDescription,
        maxMemberCount: state.value!.maxMemberCount,
        startDate: state.value!.startDate,
        myVeggieId: myVeggieId,
        veggieInfoId: state.value!.veggieInfoId,
        isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void updateVeggieInfoId(String veggieInfoId) {
    state =  AsyncData(FarmclubVegeListModel(
        selectedVege : state.value!.selectedVege,
        farmClubName: state.value!.farmClubName,
        farmClubDescription: state.value!.farmClubDescription,
        maxMemberCount: state.value!.maxMemberCount,
        startDate: state.value!.startDate,
        myVeggieId: state.value!.myVeggieId,
        veggieInfoId: veggieInfoId,
        isFarmclubOpenInfoComplete: state.value!.isFarmclubOpenInfoComplete));
    _updateFarmclubOpenInfoStatus();
  }

  void _updateFarmclubOpenInfoStatus() {
    final newStatus = state.value!.farmClubName.isNotEmpty &&
        state.value!.farmClubDescription.isNotEmpty &&
        state.value!.maxMemberCount != 0 &&
        state.value!.startDate.isNotEmpty &&
        state.value!.myVeggieId != 0;

    if (state.value!.isFarmclubOpenInfoComplete != newStatus) {
      state = AsyncData(FarmclubVegeListModel(
          selectedVege: state.value!.selectedVege,
          farmClubName: state.value!.farmClubName,
          farmClubDescription: state.value!.farmClubDescription,
          maxMemberCount: state.value!.maxMemberCount,
          startDate: state.value!.startDate,
          myVeggieId: state.value!.myVeggieId,
          veggieInfoId: state.value!.veggieInfoId,
          isFarmclubOpenInfoComplete: newStatus
      ));
    }
  }



  Future<void> farmclubOpen() async {
      await FarmclubOpenService().farmclubOpen(
          state.value!.farmClubName, state.value!.farmClubDescription, state.value!.maxMemberCount,state.value!.startDate,state.value!.myVeggieId,state.value!.veggieInfoId);
  }
}
