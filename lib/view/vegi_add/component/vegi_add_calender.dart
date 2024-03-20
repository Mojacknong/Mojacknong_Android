import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/home/home_vegi_add_provider.dart';

class VegiAddCalender extends ConsumerStatefulWidget {
  const VegiAddCalender({super.key});

  @override
  ConsumerState createState() => _VegiAddCalenderState();
}

class _VegiAddCalenderState extends ConsumerState<VegiAddCalender> {
  DateTime? _selectedDay;

  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(homeVegiInfoAddProvider.notifier);

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
        notifier.updateDate(selectedDate.toString());
      }
    }

    return Padding(
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
              notifier.updateDate(selectedDay.toString());
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        onHeaderTapped: (dateTime) => selectDate(context),
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
    );
  }
}
