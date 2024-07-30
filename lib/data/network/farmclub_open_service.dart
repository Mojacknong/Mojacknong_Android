import 'dart:convert';
import 'dart:io';
import 'package:farmus/model/farmclub_open/farmclub_vege_list_model.dart';
import 'base_api_services.dart';

class FarmclubOpenService {
  Future<FarmclubVegeListModel> postFarmclubVegeName(
      FarmclubVegeListModel farmclubVegeListModel) async {
    const url = '/api/farm-club';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
    };
    final body = jsonEncode(farmclubVegeListModel.toJson());

    ApiClient apiClient = ApiClient();
    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final String decodedBody = utf8.decode(response.bodyBytes);
      final Map<String, dynamic> jsonResponse = jsonDecode(decodedBody);

      return FarmclubVegeListModel.fromJson(jsonResponse['data']);
    } else {
      final String decodedBody = utf8.decode(response.bodyBytes);
      final Map<String, dynamic> jsonResponse = jsonDecode(decodedBody);
      throw Exception('Failed to post vege: ${jsonResponse['message']}');
    }
  }


  Future<String> farmclubVegeInfoList() async {
    const url = '/api/farm-club';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Farmclub List');
    }
  }



  Future<String> farmclubVegeName() async {
    const url = '/api/farm-club/my-veggie/create';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);

    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> farmclubOpen(
      String farmClubName,
      String farmClubDescription,
      int maxMemberCount,
      String startDate,
      int myVeggieId,
      String veggieInfoId,

      ) async {
    const url = '/api/farm-club';
    ApiClient apiClient = ApiClient();
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      "farmClubName": farmClubName,
      "farmClubDescription": farmClubDescription,
      "maxMemberCount": maxMemberCount,
      "startDate": startDate,
      "myVeggieId": myVeggieId,
      "veggieInfoId": veggieInfoId,
    });

    final response = await apiClient.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      print(response);
      return utf8.decode(response.bodyBytes);

    } else {
      throw Exception('Failed to add my veggie');
    }
  }

  Future<String> farmclubPossible() async {
    const url = '/api/farm-club/check';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);

    } else {
      throw Exception('Failed to Check');
    }
  }
}

