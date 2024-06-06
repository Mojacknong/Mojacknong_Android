import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/view/farmclub_sign_up/farmclub_sign_up_screen.dart';
import 'package:farmus/view/search/component/search_farmclub_info_widget.dart';
import 'package:flutter/material.dart';

class SearchFarmclubResult extends StatelessWidget {
  final List<SearchFarmclubInfoModel> filteredData;

  const SearchFarmclubResult({Key? key, required this.filteredData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        final farmclub = filteredData[index];
        return Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FarmclubSignUpScreen(
                      id: farmclub.id,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SearchFarmclubInfoWidget(
                  name: farmclub.name,
                  veggieName: farmclub.veggieName,
                  veggieImage: farmclub.veggieImage,
                  difficulty: farmclub.difficulty,
                  startedAt: farmclub.startedAt,
                  maxUser: farmclub.maxUser,
                  curUser: farmclub.curUser,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                height: 1,
                color: FarmusThemeColor.gray5,
              ),
            ),
          ],
        );
      },
    );
  }
}
