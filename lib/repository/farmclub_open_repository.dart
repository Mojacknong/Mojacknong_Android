
 import '../data/network/farmclub_open_service.dart';

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

   static Future<String> farmclubPossible() async {
     String? response = await FarmclubOpenService().farmclubPossible();
     return response;
   }
 }