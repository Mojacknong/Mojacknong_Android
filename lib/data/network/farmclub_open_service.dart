import 'dart:convert';
import 'dart:io';
import 'package:farmus/model/farmclub_open/farmclub_vege_list_model.dart';

import '../../model/farmclub_open/farmclub_my_vege_model.dart';
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
      print(decodedBody);
      return FarmclubVegeListModel.fromJson(jsonResponse['data']);
    } else {
      final String decodedBody = utf8.decode(response.bodyBytes);
      final Map<String, dynamic> jsonResponse = jsonDecode(decodedBody);
      print('Request failed with status: ${response.statusCode}');
      print('Response body: $decodedBody');
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

}

