
 import 'dart:math';

import '../data/network/farmclub_open_service.dart';
import '../model/farmclub_open/farmclub_vege_list_model.dart';

 class FarmclubOpenRepository {

   static Future<String> farmclubVeggieList() async {
     String? response = await FarmclubOpenService().farmclubVegeName();
     return response;
   }

   static Future<String> farmclubOpen(
       String farmClubName,
       String farmClubDescription,
       int maxMemberCount,
       String startDate,
       int myVeggieId,
       String veggieInfoId,
       ) async {
     String response =
     await FarmclubOpenService().farmclubOpen(farmClubName,farmClubDescription,maxMemberCount,startDate,myVeggieId,veggieInfoId);
     return response;
   }
 }