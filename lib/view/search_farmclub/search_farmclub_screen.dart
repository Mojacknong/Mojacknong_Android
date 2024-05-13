import 'package:farmus/view/search_farmclub/component/search_farmclub_backgroud.dart';
import 'package:farmus/view/search_farmclub/component/search_farmclub_bar_widget.dart';
import 'package:farmus/view_model/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFarmclubScreen extends ConsumerWidget {
  const SearchFarmclubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTextNotifier = ref.watch(searchTextBarProvider.notifier);
    final searchText = ref.watch(searchTextBarProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 200.0),
              child: SearchFarmclubBackground(),
            )),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchFarmclubBarWidget(
                    searchText: searchText,
                    onChanged: (value) {
                      ref
                          .read(searchTextBarProvider.notifier)
                          .updateSearchText(value);
                    },
                    onClearSearch: () {
                      searchTextNotifier.clearSearchText();
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
