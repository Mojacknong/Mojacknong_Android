import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_sign_up_final_provider.g.dart';

@riverpod
Future<FarmclubSignupModel> signUpVeggie(
    SignUpVeggieRef ref, int farmClubId, int myVeggieId) async {
  final response =
      await SearchFarmclubRepository.postSignUpVeggie(farmClubId, myVeggieId);

  return response;
}
