import 'package:farmus/view/search/component/search_app_bar.dart';
import 'package:farmus/view/search/component/search_farmclub_info_widget.dart';
import 'package:farmus/view/search/component/search_tab_bar.dart';
import 'package:farmus/view/search/component/search_welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: SearchAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWelcomeText(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchTabBar(),
                  SearchFarmclubInfoWidget(),
                  SearchFarmclubInfoWidget(),
                  SearchFarmclubInfoWidget(),
                  SearchFarmclubInfoWidget(),
                  SearchFarmclubInfoWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
