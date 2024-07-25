
 import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/network/farmclub_open_service.dart';
import '../model/farmclub_open/farmclub_my_vege_model.dart';
import '../model/farmclub_open/farmclub_vege_list_model.dart';

 class FarmclubOpenRepository {
   final FarmclubOpenService _service = FarmclubOpenService();

   Future<FarmclubVegeListModel> postFarmclubInfo(FarmclubVegeListModel farmclubVegeListModel) async {
     return await _service.postFarmclubVegeName(farmclubVegeListModel);
   }


   static Future<String> farmclubVeggieList() async {
     String? response = await FarmclubOpenService().farmclubVegeName();
     return response;
   }


   static Future<String> farmclubVegeInfoList() async {
     String? response = await FarmclubOpenService().farmclubVegeInfoList();
     return response;
   }
 }