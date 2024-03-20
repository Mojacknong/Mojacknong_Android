import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/vegi_add/component/home_vegi_name_input.dart';
import 'package:flutter/material.dart';
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
  DateTime _selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Future<void> selectDate(BuildContext context) async {
      DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: _selectedDay,
          firstDate: DateTime.utc(2020, 10, 16),
          lastDate: DateTime.now(),
          locale: const Locale('ko', 'KR'),
          initialDatePickerMode: DatePickerMode.year,
          initialEntryMode: DatePickerEntryMode.calendarOnly);

      if (selectedDate != null) {
        setState(() {
          _selectedDay = selectedDate;
          _focusedDay = selectedDate;
        });
      }
    }

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
          const SizedBox(
            height: 32.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "키우기 시작한 날을 선택해주세요"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 10, 16),
              lastDay: DateTime.now(),
              locale: 'ko_KR',
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              onHeaderTapped: (DateTime) => selectDate(context),
              headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  leftChevronVisible: false,
                  rightChevronVisible: false,
                  titleCentered: true,
                  titleTextStyle: FarmusThemeTextStyle.gray1Medium13,
                  headerMargin: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: FarmusThemeColor.background,
                  )),
              calendarStyle: const CalendarStyle(
                weekendTextStyle: FarmusThemeTextStyle.darkReqular14,
                defaultTextStyle: FarmusThemeTextStyle.darkReqular14,
                selectedDecoration: BoxDecoration(
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
