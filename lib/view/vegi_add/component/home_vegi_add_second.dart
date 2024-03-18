import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/vegi_add/component/home_vegi_name_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../home/component/home_add_sub_title.dart';

class HomeVegiAddSecond extends ConsumerStatefulWidget {
  const HomeVegiAddSecond({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeVegiAddSecondState();
}

class _HomeVegiAddSecondState extends ConsumerState<HomeVegiAddSecond> {
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "채소 별명을 입력해주세요"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: HomeVegiNameInput(),
          ),
          SizedBox(
            height: 32.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "키우기 시작한 날을 선택해주세요"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2020, 10, 16),
              lastDay: DateTime.now(),
              locale: 'ko_KR',
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                });
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleTextStyle: FarmusThemeTextStyle.gray1Medium13,

              ),
              calendarStyle: const CalendarStyle(
                weekendTextStyle: FarmusThemeTextStyle.darkReqular14,
                defaultTextStyle: FarmusThemeTextStyle.darkReqular14,
                selectedDecoration : BoxDecoration(
                  color: FarmusThemeColor.primary,
                  shape: BoxShape.circle,
                ),
                isTodayHighlighted: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
