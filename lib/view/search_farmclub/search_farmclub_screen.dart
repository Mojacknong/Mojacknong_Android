import 'package:farmus/view/search_farmclub/component/search_farmclub_bar_widget.dart';
import 'package:farmus/view/search_farmclub/component/search_farmclub_result.dart';
import 'package:farmus/view_model/search_farmclub/search_farmclub_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/primary_app_bar.dart';
import 'component/search_farmclub_backgroud.dart';

class SearchFarmclubScreen extends ConsumerStatefulWidget {
  const SearchFarmclubScreen({Key? key}) : super(key: key);

  @override
  _SearchFarmclubScreenState createState() => _SearchFarmclubScreenState();
}

class _SearchFarmclubScreenState extends ConsumerState<SearchFarmclubScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final searchFarmclubsResult =
        ref.watch(searchFarmclubsResultProvider(searchText));

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SearchFarmclubBarWidget(
            searchText: searchText,
            onChanged: (value) {
              setState(() {
                searchText = value;
              });
            },
            onClearSearch: () {
              setState(() {
                searchText = '';
              });
            },
            onSearchSubmitted: (value) {
              ref.read(searchFarmclubsResultProvider(searchText));
            },
          ),
        ),
        leadingWidth: double.infinity,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            if (searchText.isNotEmpty)
              searchFarmclubsResult.when(
                data: (searchFarmclubsResult) {
                  if (searchFarmclubsResult!.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SearchFarmclubResult(
                          filteredData: searchFarmclubsResult),
                    );
                  } else {
                    return const Center(
                      child: SearchFarmclubBackground(
                        imageUrl: "assets/image/ic_alert_circle.svg",
                        text: "검색 결과가 없습니다",
                      ),
                    );
                  }
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) {
                  return Center(
                    child: Text('Error: $error'),
                  );
                },
              ),
            if (searchText.isEmpty)
              const Center(
                child: SearchFarmclubBackground(
                  imageUrl: "assets/image/ic_search_glass.svg",
                  text: "원하는 팜클럽을 검색해보세요",
                ),
              ),
          ],
        ),
      ),
    );
  }
}
