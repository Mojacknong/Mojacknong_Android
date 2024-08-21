import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFarmclubBarWidget extends StatelessWidget {
  final String searchText;
  final Function(String) onChanged;
  final Function() onClearSearch;
  final Function(String) onSearchSubmitted;

  const SearchFarmclubBarWidget({
    Key? key,
    required this.searchText,
    required this.onChanged,
    required this.onClearSearch,
    required this.onSearchSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchBar(
            constraints: const BoxConstraints(minHeight: 42),
            leading: const Icon(
              Icons.search,
              color: FarmusThemeColor.gray2,
            ),
            backgroundColor:
                const WidgetStatePropertyAll(FarmusThemeColor.gray7),
            elevation: const WidgetStatePropertyAll(0),
            hintText: "팜클럽 이름, 채소",
            hintStyle:
            const WidgetStatePropertyAll(FarmusThemeTextStyle.gray3Medium15),
            padding: const WidgetStatePropertyAll( EdgeInsets.symmetric(
              horizontal: 16,
            )),
            controller: TextEditingController(text: searchText)
              ..selection = TextSelection.fromPosition(
                TextPosition(offset: searchText.length),
              ),
            onChanged: onChanged,
            onSubmitted: (value) {
              onSearchSubmitted(value);
            },
            trailing: searchText.isNotEmpty
                ? [
                    GestureDetector(
                      onTap: () {
                        onClearSearch();
                      },
                      child: SvgPicture.asset(
                          "assets/image/ic_textfield_delete.svg"),
                    ),
                  ]
                : null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              '취소',
              style: FarmusThemeTextStyle.gray1SemiBold15,
            ),
          ),
        ),
      ],
    );
  }
}
