import 'package:farmus/view/search_farmclub/component/search_farmclub_backgroud.dart';
import 'package:farmus/view/search_farmclub/component/search_farmclub_bar_widget.dart';
import 'package:farmus/view_model/search_farmclub/search_farmclub_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFarmclubScreen extends ConsumerStatefulWidget {
  const SearchFarmclubScreen({Key? key}) : super(key: key);

  @override
  _SearchFarmclubScreenState createState() => _SearchFarmclubScreenState();
}

class _SearchFarmclubScreenState extends ConsumerState<SearchFarmclubScreen> {
  final String _searchText = '';

  @override
  Widget build(BuildContext context) {
    final searchTextNotifier =
        ref.watch(searchFarmclubTextbarProvider.notifier);
    final searchText = ref.watch(searchFarmclubTextbarProvider);

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
                      ref
                          .read(searchFarmclubTextbarProvider.notifier)
                          .updateSearchText(value);
                    },
                    onClearSearch: () {
                      searchTextNotifier.clearSearchText();
                    },
                    onSearchSubmitted: (value) {},
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
