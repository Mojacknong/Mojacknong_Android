import 'package:farmus/view/search_farmclub/component/search_farmclub_backgroud.dart';
import 'package:farmus/view/search_farmclub/component/search_farmclub_bar_widget.dart';
import 'package:farmus/view/search_farmclub/component/search_farmclub_result.dart';
import 'package:farmus/view_model/search_farmclub/search_farmclub_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 200.0),
                child: SearchFarmclubBackground(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchFarmclubBarWidget(
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
                  searchFarmclubsResult.when(
                    data: (data) {
                      final filteredData = data!
                          .where((item) => item.name.contains(searchText))
                          .toList();

                      if (filteredData.isNotEmpty) {
                        return SearchFarmclubResult(
                          filteredData: filteredData,
                        );
                      } else {
                        return const Text('No results found');
                      }
                    },
                    loading: () => const CircularProgressIndicator(),
                    error: (error, stackTrace) {
                      return Text('Error: $error');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
